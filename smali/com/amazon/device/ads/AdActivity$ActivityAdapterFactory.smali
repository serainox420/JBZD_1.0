.class Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;
.super Ljava/lang/Object;
.source "AdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActivityAdapterFactory"
.end annotation


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-static {}, Lcom/amazon/device/ads/AdActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 178
    return-void
.end method


# virtual methods
.method createAdapter(Landroid/content/Intent;)Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 182
    const-string v0, "adapter"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Unable to launch the AdActivity due to an internal error."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 242
    :goto_0
    return-object v0

    .line 192
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 203
    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 219
    const/4 v2, 0x0

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 196
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Unable to get the adapter class."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 197
    goto :goto_0

    .line 205
    :catch_1
    move-exception v0

    .line 207
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Security exception when trying to get the default constructor."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 208
    goto :goto_0

    .line 210
    :catch_2
    move-exception v0

    .line 212
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "No default constructor exists for the adapter."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 213
    goto :goto_0

    .line 221
    :catch_3
    move-exception v0

    .line 223
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Illegal arguments given to the default constructor."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 224
    goto :goto_0

    .line 226
    :catch_4
    move-exception v0

    .line 228
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Instantiation exception when instantiating the adapter."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 229
    goto :goto_0

    .line 231
    :catch_5
    move-exception v0

    .line 233
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Illegal access exception when instantiating the adapter."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 234
    goto :goto_0

    .line 236
    :catch_6
    move-exception v0

    .line 238
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Invocation target exception when instantiating the adapter."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 239
    goto :goto_0
.end method
