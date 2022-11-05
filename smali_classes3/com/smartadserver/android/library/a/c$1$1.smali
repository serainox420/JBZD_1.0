.class Lcom/smartadserver/android/library/a/c$1$1;
.super Ljava/lang/Object;
.source "SASHttpRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/a/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/a/c$1;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/a/c$1;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/smartadserver/android/library/a/c$1$1;->a:Lcom/smartadserver/android/library/a/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c$1$1;->a:Lcom/smartadserver/android/library/a/c$1;

    iget-object v0, v0, Lcom/smartadserver/android/library/a/c$1;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Landroid/content/Context;Z)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing Google play services framework : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
