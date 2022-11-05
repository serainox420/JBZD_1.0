package com.facebook.imagepipeline.decoder;

import android.graphics.Bitmap;
import com.facebook.common.internal.Closeables;
import com.facebook.common.references.CloseableReference;
import com.facebook.imageformat.DefaultImageFormats;
import com.facebook.imageformat.ImageFormat;
import com.facebook.imageformat.ImageFormatChecker;
import com.facebook.imagepipeline.animated.factory.AnimatedImageFactory;
import com.facebook.imagepipeline.common.ImageDecodeOptions;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.image.CloseableStaticBitmap;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.image.ImmutableQualityInfo;
import com.facebook.imagepipeline.image.QualityInfo;
import com.facebook.imagepipeline.platform.PlatformDecoder;
import java.io.InputStream;
import java.util.Map;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class DefaultImageDecoder implements ImageDecoder {
    private final AnimatedImageFactory mAnimatedImageFactory;
    private final Bitmap.Config mBitmapConfig;
    @Nullable
    private final Map<ImageFormat, ImageDecoder> mCustomDecoders;
    private final ImageDecoder mDefaultDecoder;
    private final PlatformDecoder mPlatformDecoder;

    public DefaultImageDecoder(AnimatedImageFactory animatedImageFactory, PlatformDecoder platformDecoder, Bitmap.Config config) {
        this(animatedImageFactory, platformDecoder, config, null);
    }

    public DefaultImageDecoder(AnimatedImageFactory animatedImageFactory, PlatformDecoder platformDecoder, Bitmap.Config config, @Nullable Map<ImageFormat, ImageDecoder> map) {
        this.mDefaultDecoder = new ImageDecoder() { // from class: com.facebook.imagepipeline.decoder.DefaultImageDecoder.1
            @Override // com.facebook.imagepipeline.decoder.ImageDecoder
            public CloseableImage decode(EncodedImage encodedImage, int i, QualityInfo qualityInfo, ImageDecodeOptions imageDecodeOptions) {
                ImageFormat imageFormat = encodedImage.getImageFormat();
                if (imageFormat == DefaultImageFormats.JPEG) {
                    return DefaultImageDecoder.this.decodeJpeg(encodedImage, i, qualityInfo, imageDecodeOptions);
                }
                if (imageFormat == DefaultImageFormats.GIF) {
                    return DefaultImageDecoder.this.decodeGif(encodedImage, imageDecodeOptions);
                }
                if (imageFormat == DefaultImageFormats.WEBP_ANIMATED) {
                    return DefaultImageDecoder.this.decodeAnimatedWebp(encodedImage, imageDecodeOptions);
                }
                if (imageFormat == ImageFormat.UNKNOWN) {
                    throw new IllegalArgumentException("unknown image format");
                }
                return DefaultImageDecoder.this.decodeStaticImage(encodedImage, imageDecodeOptions);
            }
        };
        this.mAnimatedImageFactory = animatedImageFactory;
        this.mBitmapConfig = config;
        this.mPlatformDecoder = platformDecoder;
        this.mCustomDecoders = map;
    }

    @Override // com.facebook.imagepipeline.decoder.ImageDecoder
    public CloseableImage decode(EncodedImage encodedImage, int i, QualityInfo qualityInfo, ImageDecodeOptions imageDecodeOptions) {
        ImageDecoder imageDecoder;
        if (imageDecodeOptions.customImageDecoder != null) {
            return imageDecodeOptions.customImageDecoder.decode(encodedImage, i, qualityInfo, imageDecodeOptions);
        }
        ImageFormat imageFormat = encodedImage.getImageFormat();
        if (imageFormat == null || imageFormat == ImageFormat.UNKNOWN) {
            imageFormat = ImageFormatChecker.getImageFormat_WrapIOException(encodedImage.getInputStream());
            encodedImage.setImageFormat(imageFormat);
        }
        if (this.mCustomDecoders != null && (imageDecoder = this.mCustomDecoders.get(imageFormat)) != null) {
            return imageDecoder.decode(encodedImage, i, qualityInfo, imageDecodeOptions);
        }
        return this.mDefaultDecoder.decode(encodedImage, i, qualityInfo, imageDecodeOptions);
    }

    public CloseableImage decodeGif(EncodedImage encodedImage, ImageDecodeOptions imageDecodeOptions) {
        CloseableImage decodeStaticImage;
        InputStream inputStream = encodedImage.getInputStream();
        if (inputStream == null) {
            return null;
        }
        try {
            if (!imageDecodeOptions.forceStaticImage && this.mAnimatedImageFactory != null) {
                decodeStaticImage = this.mAnimatedImageFactory.decodeGif(encodedImage, imageDecodeOptions, this.mBitmapConfig);
            } else {
                decodeStaticImage = decodeStaticImage(encodedImage, imageDecodeOptions);
                Closeables.closeQuietly(inputStream);
            }
            return decodeStaticImage;
        } finally {
            Closeables.closeQuietly(inputStream);
        }
    }

    public CloseableStaticBitmap decodeStaticImage(EncodedImage encodedImage, ImageDecodeOptions imageDecodeOptions) {
        CloseableReference<Bitmap> decodeFromEncodedImage = this.mPlatformDecoder.decodeFromEncodedImage(encodedImage, imageDecodeOptions.bitmapConfig);
        try {
            return new CloseableStaticBitmap(decodeFromEncodedImage, ImmutableQualityInfo.FULL_QUALITY, encodedImage.getRotationAngle());
        } finally {
            decodeFromEncodedImage.close();
        }
    }

    public CloseableStaticBitmap decodeJpeg(EncodedImage encodedImage, int i, QualityInfo qualityInfo, ImageDecodeOptions imageDecodeOptions) {
        CloseableReference<Bitmap> decodeJPEGFromEncodedImage = this.mPlatformDecoder.decodeJPEGFromEncodedImage(encodedImage, imageDecodeOptions.bitmapConfig, i);
        try {
            return new CloseableStaticBitmap(decodeJPEGFromEncodedImage, qualityInfo, encodedImage.getRotationAngle());
        } finally {
            decodeJPEGFromEncodedImage.close();
        }
    }

    public CloseableImage decodeAnimatedWebp(EncodedImage encodedImage, ImageDecodeOptions imageDecodeOptions) {
        return this.mAnimatedImageFactory.decodeWebP(encodedImage, imageDecodeOptions, this.mBitmapConfig);
    }
}
