.class Lcom/adcolony/sdk/aw$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/adcolony/sdk/aw;


# direct methods
.method private constructor <init>(Lcom/adcolony/sdk/aw;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adcolony/sdk/aw;Lcom/adcolony/sdk/aw$1;)V
    .locals 0

    .prologue
    .line 680
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/aw$a;-><init>(Lcom/adcolony/sdk/aw;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v0}, Lcom/adcolony/sdk/aw;->d(Lcom/adcolony/sdk/aw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    const-string v1, "if (typeof(CN) != \'undefined\' && CN.div) {\n  if (typeof(cn_dispatch_on_touch_begin) != \'undefined\') CN.div.removeEventListener(\'mousedown\',  cn_dispatch_on_touch_begin, true);\n  if (typeof(cn_dispatch_on_touch_end) != \'undefined\')   CN.div.removeEventListener(\'mouseup\',  cn_dispatch_on_touch_end, true);\n  if (typeof(cn_dispatch_on_touch_move) != \'undefined\')  CN.div.removeEventListener(\'mousemove\',  cn_dispatch_on_touch_move, true);\n}\n"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aw;->a(Ljava/lang/String;)V

    .line 701
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 716
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 717
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v2}, Lcom/adcolony/sdk/aw;->a(Lcom/adcolony/sdk/aw;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 718
    const-string v1, "url"

    invoke-static {v0, v1, p2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 720
    sget-object v1, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v2, "onPageFinished called with URL = "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 721
    iget-object v1, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v1}, Lcom/adcolony/sdk/aw;->c(Lcom/adcolony/sdk/aw;)Lcom/adcolony/sdk/c;

    move-result-object v1

    if-nez v1, :cond_4

    .line 724
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "WebView.on_load"

    iget-object v3, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    iget v3, v3, Lcom/adcolony/sdk/aw;->a:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 734
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v0}, Lcom/adcolony/sdk/aw;->g(Lcom/adcolony/sdk/aw;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v0}, Lcom/adcolony/sdk/aw;->h(Lcom/adcolony/sdk/aw;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v0}, Lcom/adcolony/sdk/aw;->i(Lcom/adcolony/sdk/aw;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v0}, Lcom/adcolony/sdk/aw;->j(Lcom/adcolony/sdk/aw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v0}, Lcom/adcolony/sdk/aw;->k(Lcom/adcolony/sdk/aw;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 736
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v1, "WebView data loaded - executing ADC3_init"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 737
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v1, "==============================================================================="

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 738
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADC3_init("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    iget v2, v2, Lcom/adcolony/sdk/aw;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v2}, Lcom/adcolony/sdk/aw;->l(Lcom/adcolony/sdk/aw;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 739
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v1, "==============================================================================="

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 740
    iget-object v0, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADC3_init("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    iget v2, v2, Lcom/adcolony/sdk/aw;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v2}, Lcom/adcolony/sdk/aw;->l(Lcom/adcolony/sdk/aw;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aw;->a(Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v0, v4}, Lcom/adcolony/sdk/aw;->b(Lcom/adcolony/sdk/aw;Z)Z

    .line 744
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v0}, Lcom/adcolony/sdk/aw;->h(Lcom/adcolony/sdk/aw;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 746
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 747
    const-string v1, "success"

    invoke-static {v0, v1, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 748
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    iget v2, v2, Lcom/adcolony/sdk/aw;->a:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 749
    iget-object v1, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v1}, Lcom/adcolony/sdk/aw;->m(Lcom/adcolony/sdk/aw;)Lcom/adcolony/sdk/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 751
    :cond_3
    return-void

    .line 728
    :cond_4
    const-string v1, "ad_session_id"

    iget-object v2, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v2}, Lcom/adcolony/sdk/aw;->b(Lcom/adcolony/sdk/aw;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 729
    const-string v1, "container_id"

    iget-object v2, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v2}, Lcom/adcolony/sdk/aw;->c(Lcom/adcolony/sdk/aw;)Lcom/adcolony/sdk/c;

    move-result-object v2

    iget v2, v2, Lcom/adcolony/sdk/c;->n:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 730
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "WebView.on_load"

    iget-object v3, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v3}, Lcom/adcolony/sdk/aw;->c(Lcom/adcolony/sdk/aw;)Lcom/adcolony/sdk/c;

    move-result-object v3

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 707
    iget-object v0, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v0, v1}, Lcom/adcolony/sdk/aw;->b(Lcom/adcolony/sdk/aw;Z)Z

    .line 708
    iget-object v0, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v0, v1}, Lcom/adcolony/sdk/aw;->a(Lcom/adcolony/sdk/aw;Z)Z

    .line 710
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted with URL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 711
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 781
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 796
    :goto_0
    return-void

    .line 787
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 788
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v2}, Lcom/adcolony/sdk/aw;->a(Lcom/adcolony/sdk/aw;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 789
    const-string v1, "ad_session_id"

    iget-object v2, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v2}, Lcom/adcolony/sdk/aw;->b(Lcom/adcolony/sdk/aw;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 790
    const-string v1, "container_id"

    iget-object v2, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v2}, Lcom/adcolony/sdk/aw;->c(Lcom/adcolony/sdk/aw;)Lcom/adcolony/sdk/c;

    move-result-object v2

    iget v2, v2, Lcom/adcolony/sdk/c;->n:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 791
    const-string v1, "code"

    invoke-static {v0, v1, p2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 792
    const-string v1, "error"

    invoke-static {v0, v1, p3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 793
    const-string v1, "url"

    invoke-static {v0, v1, p4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 795
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "WebView.on_error"

    iget-object v3, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v3}, Lcom/adcolony/sdk/aw;->c(Lcom/adcolony/sdk/aw;)Lcom/adcolony/sdk/c;

    move-result-object v3

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 756
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-object v0

    .line 761
    :cond_1
    const-string v1, "mraid.js"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    invoke-static {v1}, Lcom/adcolony/sdk/aw;->e(Lcom/adcolony/sdk/aw;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 766
    iget-object v1, p0, Lcom/adcolony/sdk/aw$a;->b:Lcom/adcolony/sdk/aw;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/adcolony/sdk/aw;->a(Lcom/adcolony/sdk/aw;Z)Z

    .line 767
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v3, "text/javascript"

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 769
    :catch_0
    move-exception v1

    .line 771
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "UTF-8 not supported."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    return v0
.end method
