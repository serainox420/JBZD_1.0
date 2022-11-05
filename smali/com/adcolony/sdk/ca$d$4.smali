.class Lcom/adcolony/sdk/ca$d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$d;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/adcolony/sdk/ca$d$4;->a:Lcom/adcolony/sdk/ca$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 294
    .line 296
    invoke-static {}, Lcom/adcolony/sdk/co;->a()F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v3, v0

    .line 297
    invoke-static {}, Lcom/adcolony/sdk/co;->a()F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v4, v0

    .line 298
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$4;->a:Lcom/adcolony/sdk/ca$d;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v1, v0, Lcom/adcolony/sdk/ca$d;->e:Landroid/widget/FrameLayout$LayoutParams;

    .line 301
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$4;->a:Lcom/adcolony/sdk/ca$d;

    new-instance v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/adcolony/sdk/ca$d;->f:Landroid/widget/ImageView;

    .line 303
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->as()Lcom/adcolony/sdk/be;

    move-result-object v0

    const-string v1, "catalog_close_button"

    .line 305
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/be;->b(Ljava/lang/String;)Lcom/adcolony/sdk/be$a;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Lcom/adcolony/sdk/be$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 308
    array-length v1, v0

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$4;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 313
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->Q()I

    move-result v0

    .line 314
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->R()I

    move-result v2

    .line 316
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->aq()Ljava/util/Map;

    move-result-object v1

    const-string v5, "xPos"

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aq()Ljava/util/Map;

    move-result-object v0

    const-string v1, "xPos"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 321
    :goto_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aq()Ljava/util/Map;

    move-result-object v0

    const-string v5, "yPos"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aq()Ljava/util/Map;

    move-result-object v0

    const-string v2, "yPos"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 326
    :goto_1
    iget-object v2, p0, Lcom/adcolony/sdk/ca$d$4;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v2}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modal buttonOffset=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 328
    int-to-float v1, v1

    invoke-static {}, Lcom/adcolony/sdk/co;->a()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 329
    int-to-float v0, v0

    invoke-static {}, Lcom/adcolony/sdk/co;->a()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 331
    iget-object v2, p0, Lcom/adcolony/sdk/ca$d$4;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$d;->e:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 332
    iget-object v2, p0, Lcom/adcolony/sdk/ca$d$4;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$d;->e:Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 333
    iget-object v2, p0, Lcom/adcolony/sdk/ca$d$4;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$d;->e:Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800035

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 334
    iget-object v2, p0, Lcom/adcolony/sdk/ca$d$4;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$d;->e:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 335
    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$4;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->e:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 337
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$4;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$4;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 338
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$4;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$4;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$4;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->f:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$4;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/adcolony/sdk/ca$d$4$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ca$d$4$1;-><init>(Lcom/adcolony/sdk/ca$d$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v1, v0

    goto/16 :goto_0
.end method
