.class Lcom/adcolony/sdk/ci$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adcolony/sdk/ci;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/adcolony/sdk/ci$12;->b:Lcom/adcolony/sdk/ci;

    iput-object p2, p0, Lcom/adcolony/sdk/ci$12;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 119
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "digitalRedemptionComplete callback"

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cp;->c()Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/adcolony/sdk/cp;->c()Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ci$12;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;->b(ZLjava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method
