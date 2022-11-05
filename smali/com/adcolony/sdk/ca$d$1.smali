.class Lcom/adcolony/sdk/ca$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$d;->a()V
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
    .line 167
    iput-object p1, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    const/4 v3, -0x2

    const/16 v8, 0xff

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 170
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/cm$c;->b:Lcom/adcolony/sdk/cm$c;

    iput-object v1, v0, Lcom/adcolony/sdk/cm;->b:Lcom/adcolony/sdk/cm$c;

    .line 171
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v2}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/adcolony/sdk/ca$d;->a:Landroid/widget/FrameLayout;

    .line 172
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 173
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v2}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/adcolony/sdk/ca$d;->b:Landroid/widget/LinearLayout;

    .line 174
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 177
    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 181
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bm;->F()Z

    move-result v1

    .line 182
    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v1}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->setRequestedOrientation(I)V

    .line 185
    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 192
    :cond_0
    :goto_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 195
    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 196
    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v2}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    .line 199
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 201
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/ca$d$b;

    iget-object v2, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v3, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v3, v3, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v4, v4, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v4}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/adcolony/sdk/ca$d$b;-><init>(Lcom/adcolony/sdk/ca$d;Landroid/webkit/WebView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/cm;->a(Lcom/adcolony/sdk/cm$d;)V

    .line 203
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "show toastModal was called"

    invoke-static {v0, v1, v5}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 215
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->a()V

    .line 221
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 222
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    invoke-static {v5, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 225
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iput-object v1, v0, Lcom/adcolony/sdk/ca$d;->d:Landroid/webkit/WebSettings;

    .line 226
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->d:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->d:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v1}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->d:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 229
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->d:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->d:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->d:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 232
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setAlpha(F)V

    .line 234
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/adcolony/sdk/ba;

    new-instance v2, Lcom/adcolony/sdk/ca$d$a;

    iget-object v3, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v4, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v4, v4, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    invoke-direct {v2, v3, v4}, Lcom/adcolony/sdk/ca$d$a;-><init>(Lcom/adcolony/sdk/ca$d;Landroid/webkit/WebView;)V

    invoke-direct {v1, v2}, Lcom/adcolony/sdk/ba;-><init>(Lcom/adcolony/sdk/cr;)V

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/adcolony/sdk/ca$d$1$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ca$d$1$1;-><init>(Lcom/adcolony/sdk/ca$d$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 246
    return-void

    .line 187
    :cond_1
    if-ne v0, v5, :cond_0

    .line 188
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$1;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_0
.end method
