.class Lcom/smartadserver/android/library/controller/b$1;
.super Landroid/webkit/WebViewClient;
.source "SASWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/b;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/controller/b;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/b;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/b$1;->a:Lcom/smartadserver/android/library/controller/b;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Lcom/smartadserver/android/library/controller/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldOverrideUrlLoading from iframe interceptor"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/b$1;->a:Lcom/smartadserver/android/library/controller/b;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/b;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, p2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x1

    return v0
.end method
