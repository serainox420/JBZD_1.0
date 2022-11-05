.class public Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;
.super Lcom/adcolony/sdk/OverlayActivityImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/adcolony/sdk/OverlayActivityImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/adcolony/sdk/OverlayActivityImpl;->onCreate(Landroid/os/Bundle;)V

    .line 12
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adcolony/sdk/cp;->a(Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;)V

    .line 13
    return-void
.end method
