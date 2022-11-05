.class public Lcom/applovin/impl/sdk/ap;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/ap;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iput-object p3, p0, Lcom/applovin/impl/sdk/ap;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/ap;->c:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/ap;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ap;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/ap;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ap;->c:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ap;->c:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/sdk/aq;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/aq;-><init>(Lcom/applovin/impl/sdk/ap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ap;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedConfirmationManager"

    const-string v2, "Unable to show incentivized ad reward dialog. Have you defined com.applovin.adview.AppLovinConfirmationActivity in your manifest?"

    invoke-interface {v0, v1, v2, p2}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ap;->c:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ap;->b:Ljava/lang/String;

    const-string v1, "accepted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ap;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->P:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ap;->b:Ljava/lang/String;

    const-string v1, "quota_exceeded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ap;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->Q:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/ap;->b:Ljava/lang/String;

    const-string v1, "rejected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ap;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->R:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/ap;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->S:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
