.class Lcom/smaato/soma/mediation/d$1;
.super Ljava/lang/Object;
.source "GooglePlayMediationBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/mediation/d;->a(Landroid/content/Context;Lcom/smaato/soma/mediation/f$a;Ljava/util/Map;Lcom/smaato/soma/mediation/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/mediation/d;


# direct methods
.method constructor <init>(Lcom/smaato/soma/mediation/d;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/smaato/soma/mediation/d$1;->a:Lcom/smaato/soma/mediation/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 83
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$1;->a:Lcom/smaato/soma/mediation/d;

    invoke-static {v0}, Lcom/smaato/soma/mediation/d;->a(Lcom/smaato/soma/mediation/d;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$1;->a:Lcom/smaato/soma/mediation/d;

    invoke-static {v0}, Lcom/smaato/soma/mediation/d;->a(Lcom/smaato/soma/mediation/d;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 86
    :cond_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "GooglePlayMediationBanner"

    const-string v2, "GooglePlayMediationBannertimed out to fill Ad."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 91
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$1;->a:Lcom/smaato/soma/mediation/d;

    invoke-static {v0}, Lcom/smaato/soma/mediation/d;->b(Lcom/smaato/soma/mediation/d;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NETWORK_NO_FILL:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 92
    iget-object v0, p0, Lcom/smaato/soma/mediation/d$1;->a:Lcom/smaato/soma/mediation/d;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/d;->a()V

    .line 93
    return-void
.end method
