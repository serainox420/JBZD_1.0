.class Lcom/adcolony/sdk/bi$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bi;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bi;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bi;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/16 v10, 0xff

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 257
    const/high16 v0, 0x41c80000    # 25.0f

    .line 258
    const/high16 v1, 0x41c80000    # 25.0f

    .line 259
    invoke-static {}, Lcom/adcolony/sdk/co;->a()F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v4

    float-to-int v3, v0

    .line 260
    invoke-static {}, Lcom/adcolony/sdk/co;->a()F

    move-result v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v4, v0

    .line 261
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const v2, 0x800035

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v1, v0, Lcom/adcolony/sdk/bi;->C:Landroid/widget/FrameLayout$LayoutParams;

    .line 263
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-direct {v1, v9, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->x:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVerticalScrollBarEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 270
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 273
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->a()V

    .line 275
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    new-instance v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/adcolony/sdk/bi;->B:Landroid/widget/ImageView;

    .line 277
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->as()Lcom/adcolony/sdk/be;

    move-result-object v0

    const-string v1, "catalog_close_button"

    .line 279
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/be;->b(Ljava/lang/String;)Lcom/adcolony/sdk/be$a;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/adcolony/sdk/be$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 282
    array-length v1, v0

    invoke-static {v0, v7, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->B:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 287
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->Q()I

    move-result v0

    .line 288
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->R()I

    move-result v2

    .line 290
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->aq()Ljava/util/Map;

    move-result-object v1

    const-string v5, "xPos"

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 291
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aq()Ljava/util/Map;

    move-result-object v0

    const-string v1, "xPos"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 291
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 295
    :goto_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aq()Ljava/util/Map;

    move-result-object v0

    const-string v5, "yPos"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aq()Ljava/util/Map;

    move-result-object v0

    const-string v2, "yPos"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 296
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 300
    :goto_1
    iget-object v2, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v2}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buttonOffset = ("

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

    invoke-static {v2, v5, v8}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 302
    int-to-float v1, v1

    invoke-static {}, Lcom/adcolony/sdk/co;->a()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 303
    int-to-float v0, v0

    invoke-static {}, Lcom/adcolony/sdk/co;->a()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 305
    iget-object v2, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v2, v2, Lcom/adcolony/sdk/bi;->C:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 306
    iget-object v2, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v2, v2, Lcom/adcolony/sdk/bi;->C:Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 307
    iget-object v2, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v2, v2, Lcom/adcolony/sdk/bi;->C:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x35

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 308
    iget-object v2, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v2, v2, Lcom/adcolony/sdk/bi;->C:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 309
    iget-object v1, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->C:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 311
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->w:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 312
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->B:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->C:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->B:Landroid/widget/ImageView;

    new-instance v1, Lcom/adcolony/sdk/bi$3$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bi$3$1;-><init>(Lcom/adcolony/sdk/bi$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v1, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iput-object v1, v0, Lcom/adcolony/sdk/bi;->D:Landroid/webkit/WebSettings;

    .line 322
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    invoke-static {v8, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 323
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->D:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 324
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->D:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 325
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->D:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bi;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->D:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 327
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->D:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->D:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 329
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->D:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 330
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User Agent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v2, v2, Lcom/adcolony/sdk/bi;->D:Landroid/webkit/WebSettings;

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 333
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    new-instance v1, Lcom/adcolony/sdk/bi$3$2;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bi$3$2;-><init>(Lcom/adcolony/sdk/bi$3;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 340
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    new-instance v1, Lcom/adcolony/sdk/ba;

    new-instance v2, Lcom/adcolony/sdk/bi$g;

    iget-object v3, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v4, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v4, v4, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    invoke-direct {v2, v3, v4}, Lcom/adcolony/sdk/bi$g;-><init>(Lcom/adcolony/sdk/bi;Landroid/webkit/WebView;)V

    invoke-direct {v1, v2}, Lcom/adcolony/sdk/ba;-><init>(Lcom/adcolony/sdk/cr;)V

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 344
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    new-instance v1, Lcom/adcolony/sdk/bi$c;

    iget-object v2, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    invoke-direct {v1, v2}, Lcom/adcolony/sdk/bi$c;-><init>(Lcom/adcolony/sdk/bi;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 348
    :goto_2
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    new-instance v1, Lcom/adcolony/sdk/bi$a;

    iget-object v2, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    invoke-direct {v1, v2}, Lcom/adcolony/sdk/bi$a;-><init>(Lcom/adcolony/sdk/bi;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 355
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->b()V

    .line 357
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    invoke-static {v0, v7}, Lcom/adcolony/sdk/bi;->a(Lcom/adcolony/sdk/bi;I)V

    .line 358
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    new-instance v1, Lcom/adcolony/sdk/bi$b;

    iget-object v2, p0, Lcom/adcolony/sdk/bi$3;->a:Lcom/adcolony/sdk/bi;

    invoke-direct {v1, v2}, Lcom/adcolony/sdk/bi$b;-><init>(Lcom/adcolony/sdk/bi;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_2

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v1, v0

    goto/16 :goto_0
.end method
