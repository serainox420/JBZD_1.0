package pl.jbzd.app.view.gallery;

import android.content.Context;
import android.graphics.drawable.Animatable;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.Unbinder;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.backends.pipeline.PipelineDraweeControllerBuilder;
import com.facebook.drawee.controller.BaseControllerListener;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.image.ImageInfo;
import com.github.rahatarmanahmed.cpv.CircularProgressView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.loopme.common.VideoUtils;
import java.util.List;
import me.relex.photodraweeview.PhotoDraweeView;
import pl.jbzd.R;
import pl.jbzd.app.MyApplication;
import pl.jbzd.app.model.Media;
import pl.jbzd.app.model.Picture;
import pl.jbzd.b.b;
import pl.jbzd.core.ui.adapter.a;
import pl.jbzd.core.ui.view.TextView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class GalleryPicturesAdapter extends pl.jbzd.core.ui.adapter.a<pl.jbzd.app.view.gallery.a> {

    /* renamed from: a  reason: collision with root package name */
    private final int f6040a;
    private final List<pl.jbzd.app.view.gallery.a> e;
    private a f;
    private boolean g;
    private Media h;

    /* loaded from: classes3.dex */
    public interface a {
        void a(int i);

        void a(View view);

        void a(View view, Media media);

        void b(View view);

        void b(View view, Media media);
    }

    /* loaded from: classes3.dex */
    public class ShareViewHolder_ViewBinding implements Unbinder {
        private ShareViewHolder b;

        public ShareViewHolder_ViewBinding(ShareViewHolder shareViewHolder, View view) {
            this.b = shareViewHolder;
            shareViewHolder.btnShare = (TextView) butterknife.internal.b.b(view, R.id.btnShare, "field 'btnShare'", TextView.class);
            shareViewHolder.btnBack = (TextView) butterknife.internal.b.b(view, R.id.btnBack, "field 'btnBack'", TextView.class);
            shareViewHolder.btnClose = (TextView) butterknife.internal.b.b(view, R.id.btnClose, "field 'btnClose'", TextView.class);
        }

        @Override // butterknife.Unbinder
        public void a() {
            ShareViewHolder shareViewHolder = this.b;
            if (shareViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.b = null;
            shareViewHolder.btnShare = null;
            shareViewHolder.btnBack = null;
            shareViewHolder.btnClose = null;
        }
    }

    /* loaded from: classes3.dex */
    public class VideoGifViewHolder_ViewBinding implements Unbinder {
        private VideoGifViewHolder b;

        public VideoGifViewHolder_ViewBinding(VideoGifViewHolder videoGifViewHolder, View view) {
            this.b = videoGifViewHolder;
            videoGifViewHolder.image = (SimpleDraweeView) butterknife.internal.b.b(view, R.id.image, "field 'image'", SimpleDraweeView.class);
            videoGifViewHolder.progressView = (CircularProgressView) butterknife.internal.b.b(view, R.id.progressView, "field 'progressView'", CircularProgressView.class);
            videoGifViewHolder.btnShow = butterknife.internal.b.a(view, R.id.btnShow, "field 'btnShow'");
            videoGifViewHolder.btnPlay = view.findViewById(R.id.btnPlay);
            videoGifViewHolder.ytVideoPlayerContainer = (FrameLayout) butterknife.internal.b.a(view, R.id.ytVideoPlayerContainer, "field 'ytVideoPlayerContainer'", FrameLayout.class);
        }

        @Override // butterknife.Unbinder
        public void a() {
            VideoGifViewHolder videoGifViewHolder = this.b;
            if (videoGifViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.b = null;
            videoGifViewHolder.image = null;
            videoGifViewHolder.progressView = null;
            videoGifViewHolder.btnShow = null;
            videoGifViewHolder.btnPlay = null;
            videoGifViewHolder.ytVideoPlayerContainer = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, boolean z) {
        view.setEnabled(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                childAt.setEnabled(z);
                if (childAt instanceof ViewGroup) {
                    a(childAt, z);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class b extends a.AbstractC0604a<pl.jbzd.app.view.gallery.a> {

        /* renamed from: a  reason: collision with root package name */
        PhotoDraweeView f6049a;

        public b(View view) {
            super(view);
        }

        public b(View view, PhotoDraweeView photoDraweeView) {
            super(view);
            this.f6049a = photoDraweeView;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // pl.jbzd.core.ui.adapter.a.AbstractC0604a
        public void a(pl.jbzd.app.view.gallery.a aVar, int i) {
            PipelineDraweeControllerBuilder newDraweeControllerBuilder = Fresco.newDraweeControllerBuilder();
            newDraweeControllerBuilder.mo70setUri(Uri.parse(aVar.f.realmGet$image()));
            newDraweeControllerBuilder.mo75setOldController(this.f6049a.getController());
            newDraweeControllerBuilder.setControllerListener(new BaseControllerListener<ImageInfo>() { // from class: pl.jbzd.app.view.gallery.GalleryPicturesAdapter.b.1
                @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
                /* renamed from: a */
                public void onFinalImageSet(String str, ImageInfo imageInfo, Animatable animatable) {
                    super.onFinalImageSet(str, imageInfo, animatable);
                    if (imageInfo != null) {
                        b.this.f6049a.a(imageInfo.getWidth(), imageInfo.getHeight());
                    }
                }
            });
            this.f6049a.setController(newDraweeControllerBuilder.mo73build());
        }

        public void a(boolean z) {
            GalleryPicturesAdapter.this.a(this.d, z);
        }
    }

    /* loaded from: classes3.dex */
    public class VideoGifViewHolder extends b {
        @BindView
        View btnPlay;
        @BindView
        View btnShow;
        @BindView
        SimpleDraweeView image;
        @BindView
        CircularProgressView progressView;
        @BindView
        FrameLayout ytVideoPlayerContainer;

        public VideoGifViewHolder(View view) {
            super(view);
        }

        @Override // pl.jbzd.app.view.gallery.GalleryPicturesAdapter.b, pl.jbzd.core.ui.adapter.a.AbstractC0604a
        public void a(final pl.jbzd.app.view.gallery.a aVar, int i) {
            int b;
            View.OnClickListener onClickListener;
            aVar.g = this;
            aVar.e = false;
            aVar.c = false;
            BaseControllerListener<ImageInfo> baseControllerListener = new BaseControllerListener<ImageInfo>() { // from class: pl.jbzd.app.view.gallery.GalleryPicturesAdapter.VideoGifViewHolder.1
                @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
                /* renamed from: a */
                public void onFinalImageSet(String str, ImageInfo imageInfo, Animatable animatable) {
                    int b2;
                    if (imageInfo != null) {
                        aVar.f.realmSet$width(imageInfo.getWidth());
                        aVar.f.realmSet$height(imageInfo.getHeight());
                        Media media = new Media(aVar.f.realmGet$width(), aVar.f.realmGet$height(), false);
                        Context context = VideoGifViewHolder.this.image.getContext();
                        View view = (View) VideoGifViewHolder.this.image.getParent();
                        SimpleDraweeView simpleDraweeView = VideoGifViewHolder.this.image;
                        FrameLayout frameLayout = VideoGifViewHolder.this.ytVideoPlayerContainer;
                        if (GalleryPicturesAdapter.this.f6040a < pl.jbzd.core.a.a.b(VideoGifViewHolder.this.image.getContext())) {
                            b2 = GalleryPicturesAdapter.this.f6040a;
                        } else {
                            b2 = pl.jbzd.core.a.a.b(VideoGifViewHolder.this.image.getContext());
                        }
                        pl.jbzd.app.c.a.a(context, media, view, simpleDraweeView, frameLayout, b2);
                    }
                }

                @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
                /* renamed from: a */
                public void onIntermediateImageSet(String str, ImageInfo imageInfo) {
                }

                @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
                public void onFailure(String str, Throwable th) {
                }
            };
            Media media = new Media(aVar.f.realmGet$width(), aVar.f.realmGet$height(), false);
            Context context = this.image.getContext();
            View view = (View) this.image.getParent();
            SimpleDraweeView simpleDraweeView = this.image;
            FrameLayout frameLayout = this.ytVideoPlayerContainer;
            if (GalleryPicturesAdapter.this.f6040a < pl.jbzd.core.a.a.b(this.image.getContext())) {
                b = GalleryPicturesAdapter.this.f6040a;
            } else {
                b = pl.jbzd.core.a.a.b(this.image.getContext());
            }
            pl.jbzd.app.c.a.a(context, media, view, simpleDraweeView, frameLayout, b);
            this.image.setController(Fresco.newDraweeControllerBuilder().setControllerListener(baseControllerListener).mo70setUri(Uri.parse(aVar.f.realmGet$image())).mo73build());
            b.a aVar2 = new b.a() { // from class: pl.jbzd.app.view.gallery.GalleryPicturesAdapter.VideoGifViewHolder.2
                @Override // pl.jbzd.b.b.a
                public void a(View view2, String str) {
                    aVar.e = true;
                    aVar.c = true;
                    if (aVar.d > BitmapDescriptorFactory.HUE_RED) {
                        MyApplication.a(VideoGifViewHolder.this.image.getContext()).a(aVar.d);
                        aVar.d = -1.0f;
                    }
                    if (VideoGifViewHolder.this.ytVideoPlayerContainer != null) {
                        VideoGifViewHolder.this.ytVideoPlayerContainer.setVisibility(0);
                    }
                    if (aVar.f6053a && VideoGifViewHolder.this.image != null) {
                        VideoGifViewHolder.this.image.setVisibility(8);
                        VideoGifViewHolder.this.btnShow.setVisibility(8);
                        VideoGifViewHolder.this.progressView.setVisibility(8);
                    }
                }

                @Override // pl.jbzd.b.b.a
                public void b(View view2, String str) {
                    VideoGifViewHolder.this.image.setVisibility(0);
                    VideoGifViewHolder.this.btnShow.setVisibility(0);
                    VideoGifViewHolder.this.progressView.setVisibility(8);
                    aVar.e = false;
                }

                @Override // pl.jbzd.b.b.a
                public void a(View view2, String str, String str2) {
                    if (view2.getContext() != null) {
                        Toast.makeText(view2.getContext(), str2, 0).show();
                    }
                }
            };
            if (this.btnPlay != null) {
                this.btnPlay.setVisibility(8);
                onClickListener = new View.OnClickListener() { // from class: pl.jbzd.app.view.gallery.GalleryPicturesAdapter.VideoGifViewHolder.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (aVar.e) {
                            if (MyApplication.a(view2.getContext()).c()) {
                                MyApplication.a(view2.getContext()).d();
                                VideoGifViewHolder.this.btnPlay.setVisibility(0);
                                return;
                            }
                            MyApplication.a(view2.getContext()).d();
                            VideoGifViewHolder.this.btnPlay.setVisibility(8);
                            return;
                        }
                        aVar.a();
                    }
                };
                this.btnPlay.setOnClickListener(onClickListener);
            } else {
                this.btnShow.setVisibility(8);
                onClickListener = new View.OnClickListener() { // from class: pl.jbzd.app.view.gallery.GalleryPicturesAdapter.VideoGifViewHolder.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (aVar.e) {
                            if (MyApplication.a(view2.getContext()).c()) {
                                MyApplication.a(view2.getContext()).d();
                                VideoGifViewHolder.this.btnShow.setVisibility(0);
                                return;
                            }
                            MyApplication.a(view2.getContext()).d();
                            VideoGifViewHolder.this.btnShow.setVisibility(8);
                            return;
                        }
                        aVar.a();
                    }
                };
                this.btnShow.setOnClickListener(onClickListener);
            }
            aVar.a(aVar2, onClickListener);
            this.image.setVisibility(0);
            this.btnShow.setVisibility(0);
            if (GalleryPicturesAdapter.this.g && i == 0) {
                GalleryPicturesAdapter.this.g = false;
                if (this.btnPlay != null) {
                    this.btnPlay.setVisibility(8);
                } else {
                    this.btnShow.setVisibility(8);
                }
                aVar.a();
            }
        }

        @Override // pl.jbzd.app.view.gallery.GalleryPicturesAdapter.b
        public void a(boolean z) {
            int i = 0;
            GalleryPicturesAdapter.this.a(this.d, z);
            int i2 = z ? 0 : 8;
            this.progressView.setVisibility(i2);
            this.btnShow.setVisibility(i2);
            if (this.ytVideoPlayerContainer != null) {
                FrameLayout frameLayout = this.ytVideoPlayerContainer;
                if (!z) {
                    i = 4;
                }
                frameLayout.setVisibility(i);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class ShareViewHolder extends a.AbstractC0604a<Picture> {
        @BindView
        TextView btnBack;
        @BindView
        TextView btnClose;
        @BindView
        TextView btnShare;

        public ShareViewHolder(View view) {
            super(view);
        }

        @Override // pl.jbzd.core.ui.adapter.a.AbstractC0604a
        public void a(Picture picture, int i) {
            this.btnShare.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.gallery.GalleryPicturesAdapter.ShareViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GalleryPicturesAdapter.this.f.b(view, GalleryPicturesAdapter.this.h);
                }
            });
            this.btnBack.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.gallery.GalleryPicturesAdapter.ShareViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GalleryPicturesAdapter.this.f.b(view);
                }
            });
            this.btnClose.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.gallery.GalleryPicturesAdapter.ShareViewHolder.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    GalleryPicturesAdapter.this.f.a(view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GalleryPicturesAdapter(Context context, Media media, List<pl.jbzd.app.view.gallery.a> list, a aVar) {
        super(context, list);
        this.g = true;
        this.e = list;
        this.h = media;
        this.f = aVar;
        this.f6040a = pl.jbzd.core.a.a.b(context);
    }

    @Override // pl.jbzd.core.ui.adapter.a
    public a.AbstractC0604a a(ViewGroup viewGroup, int i, int i2) {
        boolean z = true;
        if (GalleryViewType.SHARE.id == i2) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gallery_item_share, viewGroup, false);
            inflate.setClickable(true);
            return new ShareViewHolder(inflate);
        }
        boolean z2 = this.e.get(i).f.realmGet$mp4() != null && !this.e.get(i).f.realmGet$mp4().isEmpty() && this.e.get(i).f.realmGet$mp4().endsWith(VideoUtils.MP4_FORMAT);
        boolean z3 = z2 && this.e.get(i).f.realmGet$image().endsWith("gif");
        if (this.e.get(i).f.realmGet$youtube() == null || this.e.get(i).f.realmGet$youtube().isEmpty()) {
            z = false;
        }
        if (!z3 && !z2 && !z) {
            View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gallery_item_picture, viewGroup, false);
            PhotoDraweeView photoDraweeView = new PhotoDraweeView(this.c);
            photoDraweeView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
            ((ViewGroup) inflate2).addView(photoDraweeView);
            return new b(inflate2, photoDraweeView);
        } else if (z3) {
            return new VideoGifViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gallery_item_gif, viewGroup, false));
        } else {
            return new VideoGifViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gallery_item_video, viewGroup, false));
        }
    }

    @Override // pl.jbzd.core.ui.adapter.a
    public int a(int i) {
        return i >= this.d.size() ? GalleryViewType.SHARE.id : GalleryViewType.PICTURE.id;
    }

    @Override // pl.jbzd.core.ui.adapter.a, android.support.v4.view.aa
    public int getCount() {
        return (this.h.realmGet$type().equals("gallery") ? 1 : 0) + this.d.size();
    }
}
