.class Lcom/smartadserver/android/library/ui/SASAdView$35$1;
.super Ljava/lang/Thread;
.source "SASAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView$35;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/URL;

.field final synthetic b:Lcom/smartadserver/android/library/ui/SASAdView$35;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView$35;Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$35$1;->b:Lcom/smartadserver/android/library/ui/SASAdView$35;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$35$1;->a:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1502
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 1503
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$35$1;->a:Ljava/net/URL;

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/b;->a(Ljava/net/URL;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1506
    aget-object v2, v1, v3

    if-eqz v2, :cond_1

    .line 1507
    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/smartadserver/android/library/g/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1511
    :goto_0
    if-eqz v0, :cond_0

    const-string v2, "\"mraid.js\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1513
    const-string v2, "\"mraid.js\""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/smartadserver/android/library/controller/mraid/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1519
    :cond_0
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$35$1;->b:Lcom/smartadserver/android/library/ui/SASAdView$35;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView$35;->i:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v3, Lcom/smartadserver/android/library/ui/SASAdView$35$1$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/smartadserver/android/library/ui/SASAdView$35$1$1;-><init>(Lcom/smartadserver/android/library/ui/SASAdView$35$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 1525
    return-void

    .line 1509
    :cond_1
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$35$1;->b:Lcom/smartadserver/android/library/ui/SASAdView$35;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView$35;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/smartadserver/android/library/g/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
