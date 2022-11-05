.class Lcom/smartadserver/android/library/ui/a$3;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;->setupVPAIDWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/a$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1154
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->n(Lcom/smartadserver/android/library/ui/a;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1155
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 1156
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->n(Lcom/smartadserver/android/library/ui/a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1158
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->n(Lcom/smartadserver/android/library/ui/a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1159
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1160
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 1161
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 1163
    :cond_0
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1164
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1167
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 1168
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 1171
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->n(Lcom/smartadserver/android/library/ui/a;)Landroid/webkit/WebView;

    move-result-object v0

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 1172
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->n(Lcom/smartadserver/android/library/ui/a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1173
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->n(Lcom/smartadserver/android/library/ui/a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1175
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->n(Lcom/smartadserver/android/library/ui/a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 1176
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->n(Lcom/smartadserver/android/library/ui/a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 1178
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->n(Lcom/smartadserver/android/library/ui/a;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/ui/a$3$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$3$1;-><init>(Lcom/smartadserver/android/library/ui/a$3;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1199
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1200
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->n(Lcom/smartadserver/android/library/ui/a;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1203
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    const-string v1, "Timeout when loading VPAID creative"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;Ljava/lang/String;)Ljava/lang/String;

    .line 1205
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->n(Lcom/smartadserver/android/library/ui/a;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/ui/a$e;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/smartadserver/android/library/ui/a$e;-><init>(Lcom/smartadserver/android/library/ui/a;Lcom/smartadserver/android/library/ui/a$1;)V

    const-string v2, "androidVPAIDPlayer"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$3;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->n(Lcom/smartadserver/android/library/ui/a;)Landroid/webkit/WebView;

    move-result-object v1

    sget-boolean v0, Lcom/smartadserver/android/library/g/c;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "http://diffdev44.smartadserver.com/diff/templates/js/mobile/sdk/sas-vpaid-resources/outstream-wrapper.1.0.html"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1210
    :cond_2
    return-void

    .line 1206
    :cond_3
    const-string v0, "http://ak-ns.sascdn.com/diff/templates/js/mobile/sdk/sas-vpaid-resources/outstream-wrapper.1.0.html"

    goto :goto_0
.end method
