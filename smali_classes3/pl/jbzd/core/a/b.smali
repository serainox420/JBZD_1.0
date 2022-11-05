.class public Lpl/jbzd/core/a/b;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field public static a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lpl/jbzd/core/a/b;->a:F

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 142
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 143
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 116
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 117
    const-string v1, "Orientation"

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 119
    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    :pswitch_0
    return-object p0

    .line 121
    :pswitch_1
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {p0, v0}, Lpl/jbzd/core/a/b;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 124
    :pswitch_2
    const/high16 v0, 0x43340000    # 180.0f

    invoke-static {p0, v0}, Lpl/jbzd/core/a/b;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 127
    :pswitch_3
    const/high16 v0, 0x43870000    # 270.0f

    invoke-static {p0, v0}, Lpl/jbzd/core/a/b;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 130
    :pswitch_4
    invoke-static {p0, v2, v3}, Lpl/jbzd/core/a/b;->a(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 133
    :pswitch_5
    invoke-static {p0, v3, v2}, Lpl/jbzd/core/a/b;->a(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    .line 148
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 149
    if-eqz p1, :cond_0

    move v3, v0

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v5, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 150
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    move v3, v2

    .line 149
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
