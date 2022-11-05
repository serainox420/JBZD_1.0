.class Lcom/smartadserver/android/library/ui/SASAdView$14;
.super Landroid/webkit/WebViewClient;
.source "SASAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->d(Ljava/lang/String;)Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 2552
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$14;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 2555
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->v()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading from parallax WebView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$14;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, p2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;)V

    .line 2557
    const/4 v0, 0x1

    return v0
.end method
