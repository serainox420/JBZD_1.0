.class public Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "isModalRequest"


# instance fields
.field b:Landroid/view/ViewGroup;

.field c:Lcom/adcolony/sdk/ca;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method a()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity$1;-><init>(Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 51
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity$2;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity$2;-><init>(Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 60
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->c:Lcom/adcolony/sdk/ca;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ca;->c()V

    .line 64
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->c()V

    .line 76
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->c:Lcom/adcolony/sdk/ca;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ca;->a()V

    .line 77
    invoke-virtual {p0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->finish()V

    .line 78
    return-void
.end method

.method e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->az()Lcom/adcolony/sdk/cn;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/cm$a;->j:Lcom/adcolony/sdk/cm$a;

    .line 69
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cm$a;)V

    .line 70
    invoke-virtual {p0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->c()V

    .line 71
    invoke-virtual {p0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->finish()V

    .line 72
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    new-instance v0, Lcom/adcolony/sdk/ca;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/ca;-><init>(Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;)V

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->c:Lcom/adcolony/sdk/ca;

    .line 21
    invoke-virtual {p0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 22
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->b:Landroid/view/ViewGroup;

    .line 23
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->b:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 25
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->setContentView(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    const-string v1, "isModalRequest"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 30
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->a(Z)V

    .line 32
    :cond_0
    return-void
.end method
