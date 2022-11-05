.class Lcom/intentsoftware/addapptr/banners/NexageBanner$1;
.super Ljava/lang/Object;
.source "NexageBanner.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/b/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/NexageBanner;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

.field final synthetic val$size:Lcom/intentsoftware/addapptr/BannerSize;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/NexageBanner;Lcom/intentsoftware/addapptr/BannerSize;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    iput-object p2, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->val$size:Lcom/intentsoftware/addapptr/BannerSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHtmlDownloaded(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 76
    const-string v0, "<body>.{0,5}</body>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    const-string v1, "body too short"

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$100(Lcom/intentsoftware/addapptr/banners/NexageBanner;Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$300(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$202(Lcom/intentsoftware/addapptr/banners/NexageBanner;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 82
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$500(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$402(Lcom/intentsoftware/addapptr/banners/NexageBanner;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 83
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$400(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$600(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 84
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$400(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$400(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$400(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head><style>body {width: 100%; height: 100%; padding:0; margin:0; display: table; } center {display: table-cell; vertical-align: middle;}</style></head><body><center>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</center></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$700(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 93
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->val$size:Lcom/intentsoftware/addapptr/BannerSize;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/BannerSize;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v3, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->val$size:Lcom/intentsoftware/addapptr/BannerSize;

    invoke-virtual {v3}, Lcom/intentsoftware/addapptr/BannerSize;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-direct {v6, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 95
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$400(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$800(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "utf-8"

    iget-object v5, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v5}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$800(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$200(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$400(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public onHtmlDownloadingError()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    const-string v1, "html download error"

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$000(Lcom/intentsoftware/addapptr/banners/NexageBanner;Ljava/lang/String;)V

    .line 71
    return-void
.end method
