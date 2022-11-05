.class public abstract Lcom/applovin/impl/adview/u;
.super Landroid/view/View;


# instance fields
.field protected final a:Lcom/applovin/sdk/AppLovinSdk;

.field protected final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/applovin/impl/adview/u;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/applovin/impl/adview/u;->a:Lcom/applovin/sdk/AppLovinSdk;

    return-void
.end method

.method public static a(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;Lcom/applovin/impl/adview/v;)Lcom/applovin/impl/adview/u;
    .locals 1

    sget-object v0, Lcom/applovin/impl/adview/v;->b:Lcom/applovin/impl/adview/v;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/adview/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/applovin/impl/adview/an;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/an;-><init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/applovin/impl/adview/ao;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/ao;-><init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a(I)V
.end method
