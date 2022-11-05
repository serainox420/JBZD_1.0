.class Lcom/applovin/impl/sdk/ax;
.super Lcom/applovin/sdk/AppLovinSdkSettings;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Lcom/applovin/impl/sdk/l;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/ax;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method a()Lcom/applovin/impl/sdk/l;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ax;->b:Lcom/applovin/impl/sdk/l;

    return-object v0
.end method

.method b()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ax;->a:Ljava/util/Map;

    return-object v0
.end method
