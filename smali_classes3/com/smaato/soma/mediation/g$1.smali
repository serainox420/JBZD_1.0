.class Lcom/smaato/soma/mediation/g$1;
.super Ljava/lang/Object;
.source "MediationEventBannerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/mediation/g;-><init>(Lcom/smaato/soma/j;Ljava/lang/String;Lcom/smaato/soma/mediation/o;Lcom/smaato/soma/mediation/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/mediation/g;


# direct methods
.method constructor <init>(Lcom/smaato/soma/mediation/g;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/smaato/soma/mediation/g$1;->a:Lcom/smaato/soma/mediation/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 55
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MediationEventBannerAdapter"

    const-string v2, "Third-party network timed out to fill Ad."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 61
    iget-object v0, p0, Lcom/smaato/soma/mediation/g$1;->a:Lcom/smaato/soma/mediation/g;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NETWORK_TIMEOUT:Lcom/smaato/soma/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/mediation/g;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 62
    iget-object v0, p0, Lcom/smaato/soma/mediation/g$1;->a:Lcom/smaato/soma/mediation/g;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/g;->f()V

    .line 63
    return-void
.end method
