.class public Lcom/loopme/adbrowser/AdBrowserWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AdBrowserWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;
    }
.end annotation


# static fields
.field private static final GEO_HOST:Ljava/lang/String; = "maps.google.com"

.field private static final GEO_SCHEME:Ljava/lang/String; = "geo"

.field private static final HEADER_PLAIN_TEXT:Ljava/lang/String; = "plain/text"

.field private static final HTTPS_SCHEME:Ljava/lang/String; = "https"

.field private static final HTTP_SCHEME:Ljava/lang/String; = "http"

.field private static final INTENT_SCHEME:Ljava/lang/String; = "intent"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAILTO_SCHEME:Ljava/lang/String; = "mailto"

.field private static final MARKET_HOST:Ljava/lang/String; = "play.google.com"

.field private static final MARKET_SCHEME:Ljava/lang/String; = "market"

.field public static final PLAY_STORE_URL:Ljava/lang/String; = "https://play.google.com/store/apps/details?id="

.field private static final TEL_SCHEME:Ljava/lang/String; = "tel"

.field private static final YOUTUBE_HOST1:Ljava/lang/String; = "www.youtube.com"

.field private static final YOUTUBE_HOST2:Ljava/lang/String; = "m.youtube.com"

.field private static final YOUTUBE_SCHEME:Ljava/lang/String; = "vnd.youtube"


# instance fields
.field private mEmptyListener:Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;

.field private mListener:Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/loopme/adbrowser/AdBrowserWebViewClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 46
    new-instance v0, Lcom/loopme/adbrowser/AdBrowserWebViewClient$1;

    invoke-direct {v0, p0}, Lcom/loopme/adbrowser/AdBrowserWebViewClient$1;-><init>(Lcom/loopme/adbrowser/AdBrowserWebViewClient;)V

    iput-object v0, p0, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->mEmptyListener:Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;

    .line 79
    if-nez p1, :cond_0

    .line 80
    sget-object v0, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error: Wrong listener"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->mEmptyListener:Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;

    iput-object v0, p0, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->mListener:Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->mListener:Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;

    goto :goto_0
.end method

.method private checkHost(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 154
    const-string v0, "maps.google.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    invoke-direct {p0, v0, p3}, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->resolveAndStartActivity(Landroid/content/Intent;Landroid/content/Context;)V

    .line 166
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 158
    :cond_0
    const-string v0, "play.google.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "www.youtube.com"

    .line 159
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "m.youtube.com"

    .line 160
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->leaveApp(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 164
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleIntentScheme(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 189
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 190
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    invoke-direct {p0, v0, p2}, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->isActivityResolved(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 201
    :goto_0
    return-void

    .line 194
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->leaveApp(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->mListener:Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;

    invoke-interface {v0}, Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;->onReceiveError()V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong redirect ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "js"

    invoke-static {v0, v1}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleMarketScheme(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 171
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 172
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    invoke-direct {p0, v0, p2}, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->isActivityResolved(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 185
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 177
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->leaveApp(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->mListener:Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;

    invoke-interface {v0}, Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;->onReceiveError()V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong redirect ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "js"

    invoke-static {v0, v1}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isActivityResolved(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 221
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leaveApp(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 206
    invoke-direct {p0, v0, p2}, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->resolveAndStartActivity(Landroid/content/Intent;Landroid/content/Context;)V

    .line 207
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->mListener:Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;

    invoke-interface {v0}, Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;->onLeaveApp()V

    .line 208
    return-void
.end method

.method private resolveAndStartActivity(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->isActivityResolved(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->mListener:Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;

    invoke-interface {v0}, Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;->onReceiveError()V

    goto :goto_0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->mListener:Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;->onPageFinished(Z)V

    .line 234
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 227
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->mListener:Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;

    invoke-interface {v0}, Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;->onPageStarted()V

    .line 228
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    sget-object v1, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->mListener:Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;

    invoke-interface {v0}, Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;->onReceiveError()V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong redirect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "js"

    invoke-static {v0, v1}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 89
    sget-object v2, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldOverrideUrlLoading url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 94
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 100
    if-nez v3, :cond_0

    .line 142
    :goto_0
    return v0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong redirect ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "js"

    invoke-static {v1, v2}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong redirect ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "js"

    invoke-static {v1, v2}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    const-string v6, "tel"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 114
    invoke-direct {p0, v0, v2}, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->resolveAndStartActivity(Landroid/content/Intent;Landroid/content/Context;)V

    :goto_1
    move v0, v1

    .line 142
    goto :goto_0

    .line 116
    :cond_2
    const-string v6, "mailto"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 117
    const-string v4, "mailto:"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 119
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v5, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 120
    const-string v3, "plain/text"

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v6, "android.intent.extra.EMAIL"

    new-array v7, v1, [Ljava/lang/String;

    aput-object v4, v7, v0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-direct {p0, v5, v2}, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->resolveAndStartActivity(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_1

    .line 123
    :cond_3
    const-string v0, "geo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 125
    invoke-direct {p0, v0, v2}, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->resolveAndStartActivity(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_1

    .line 127
    :cond_4
    const-string v0, "vnd.youtube"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 128
    invoke-direct {p0, p2, v2}, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->leaveApp(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 130
    :cond_5
    const-string v0, "http"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "https"

    .line 131
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    :cond_6
    invoke-direct {p0, p2, v5, v2}, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->checkHost(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto/16 :goto_0

    .line 134
    :cond_7
    const-string v0, "intent"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 135
    invoke-direct {p0, p2, v2}, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->handleIntentScheme(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 136
    :cond_8
    const-string v0, "market"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 137
    invoke-direct {p0, p2, v2}, Lcom/loopme/adbrowser/AdBrowserWebViewClient;->handleMarketScheme(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    :cond_9
    move v0, v1

    .line 139
    goto/16 :goto_0
.end method
