.class public Lcom/apprupt/sdk/CvValueExchange;
.super Ljava/lang/Object;
.source "CvValueExchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvValueExchange$Cappings;,
        Lcom/apprupt/sdk/CvValueExchange$RewardConfig;,
        Lcom/apprupt/sdk/CvValueExchange$Reward;,
        Lcom/apprupt/sdk/CvValueExchange$Listener;,
        Lcom/apprupt/sdk/CvValueExchange$Status;
    }
.end annotation


# static fields
.field private static final a:Lcom/apprupt/sdk/Logger$log;


# instance fields
.field private volatile b:Lcom/apprupt/sdk/CvValueExchange$Listener;

.field private volatile c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/apprupt/sdk/CvValueExchange$RewardConfig;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/apprupt/sdk/CvValueExchange$Cappings;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "Lifecycle.VE"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    sput-object v0, Lcom/apprupt/sdk/CvValueExchange;->a:Lcom/apprupt/sdk/Logger$log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvValueExchange;->b:Lcom/apprupt/sdk/CvValueExchange$Listener;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvValueExchange;->c:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvValueExchange;->d:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lcom/apprupt/sdk/SimpleJSON;Lcom/apprupt/sdk/CvValueExchange$RewardConfig;)Lcom/apprupt/sdk/CvValueExchange$RewardConfig;
    .locals 6

    .prologue
    .line 129
    new-instance v0, Lcom/apprupt/sdk/CvValueExchange$RewardConfig;

    const-string v1, "currency"

    iget-object v2, p2, Lcom/apprupt/sdk/CvValueExchange$RewardConfig;->a:Ljava/lang/String;

    .line 130
    invoke-virtual {p1, v1, v2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "rewardAmount"

    iget v3, p2, Lcom/apprupt/sdk/CvValueExchange$RewardConfig;->b:I

    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/apprupt/sdk/SimpleJSON;->d(Ljava/lang/String;Ljava/lang/Number;)I

    move-result v3

    const-string v1, "dailyLimit"

    iget v4, p2, Lcom/apprupt/sdk/CvValueExchange$RewardConfig;->c:I

    .line 132
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/apprupt/sdk/SimpleJSON;->d(Ljava/lang/String;Ljava/lang/Number;)I

    move-result v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/apprupt/sdk/CvValueExchange$RewardConfig;-><init>(Lcom/apprupt/sdk/CvValueExchange;Ljava/lang/String;IILcom/apprupt/sdk/CvValueExchange$1;)V

    .line 129
    return-object v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvValueExchange;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvValueExchange;)Lcom/apprupt/sdk/CvValueExchange$Listener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange;->b:Lcom/apprupt/sdk/CvValueExchange$Listener;

    return-object v0
.end method

.method static synthetic c()Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/apprupt/sdk/CvValueExchange;->a:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method


# virtual methods
.method a()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange;->e:Landroid/content/Context;

    const-string v1, "cvValueExchange"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method a(I)Lcom/apprupt/sdk/CvValueExchange$Status;
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvValueExchange$Cappings;

    .line 345
    if-nez v0, :cond_0

    sget-object v0, Lcom/apprupt/sdk/CvValueExchange$Status;->a:Lcom/apprupt/sdk/CvValueExchange$Status;

    .line 346
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->a(Lcom/apprupt/sdk/CvValueExchange$Cappings;)I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/apprupt/sdk/CvValueExchange$Status;->b:Lcom/apprupt/sdk/CvValueExchange$Status;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/apprupt/sdk/CvValueExchange$Status;->c:Lcom/apprupt/sdk/CvValueExchange$Status;

    goto :goto_0
.end method

.method a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvValueExchange;->e:Landroid/content/Context;

    .line 122
    return-void
.end method

.method public a(Landroid/content/Context;ILcom/apprupt/sdk/CvContentManager$PreloaderListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 242
    sget-object v7, Lcom/apprupt/sdk/CvSDK;->c:Lcom/apprupt/sdk/CvMediation;

    new-instance v0, Lcom/apprupt/sdk/CvValueExchange$2;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/apprupt/sdk/CvValueExchange$2;-><init>(Lcom/apprupt/sdk/CvValueExchange;ILcom/apprupt/sdk/CvContentManager$PreloaderListener;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Lcom/apprupt/sdk/CvMediation;->a(Ljava/lang/Runnable;)V

    .line 276
    return-void
.end method

.method public a(Landroid/content/Context;ILcom/apprupt/sdk/CvSDK$CvInterstitialListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 279
    sget-object v7, Lcom/apprupt/sdk/CvSDK;->c:Lcom/apprupt/sdk/CvMediation;

    new-instance v0, Lcom/apprupt/sdk/CvValueExchange$3;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/apprupt/sdk/CvValueExchange$3;-><init>(Lcom/apprupt/sdk/CvValueExchange;ILcom/apprupt/sdk/CvSDK$CvInterstitialListener;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Lcom/apprupt/sdk/CvMediation;->a(Ljava/lang/Runnable;)V

    .line 331
    return-void
.end method

.method public a(Lcom/apprupt/sdk/CvValueExchange$Listener;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/apprupt/sdk/CvValueExchange;->b:Lcom/apprupt/sdk/CvValueExchange$Listener;

    .line 219
    return-void
.end method

.method a(Lcom/apprupt/sdk/SimpleJSON;)V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 138
    sget-object v1, Lcom/apprupt/sdk/CvValueExchange;->a:Lcom/apprupt/sdk/Logger$log;

    new-array v2, v13, [Ljava/lang/Object;

    const-string v0, "VEEEEEE"

    aput-object v0, v2, v7

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/apprupt/sdk/SimpleJSON;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvValueExchange;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    if-nez p1, :cond_3

    .line 143
    const-string v1, "config"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 183
    :cond_0
    :goto_1
    return-void

    .line 138
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 145
    :cond_2
    new-instance p1, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {p1, v1}, Lcom/apprupt/sdk/SimpleJSON;-><init>(Ljava/lang/String;)V

    .line 147
    :cond_3
    sget-object v1, Lcom/apprupt/sdk/CvValueExchange;->a:Lcom/apprupt/sdk/Logger$log;

    new-array v2, v13, [Ljava/lang/Object;

    const-string v4, "Got ve config"

    aput-object v4, v2, v7

    invoke-virtual {p1}, Lcom/apprupt/sdk/SimpleJSON;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 149
    const-string v2, "config"

    invoke-virtual {p1}, Lcom/apprupt/sdk/SimpleJSON;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    const-string v1, "cappings"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 155
    new-instance v0, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v0, v1}, Lcom/apprupt/sdk/SimpleJSON;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 160
    :goto_2
    new-instance v0, Lcom/apprupt/sdk/CvValueExchange$RewardConfig;

    const-string v2, "Credits"

    const/16 v4, 0x14

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/apprupt/sdk/CvValueExchange$RewardConfig;-><init>(Lcom/apprupt/sdk/CvValueExchange;Ljava/lang/String;IILcom/apprupt/sdk/CvValueExchange$1;)V

    invoke-direct {p0, p1, v0}, Lcom/apprupt/sdk/CvValueExchange;->a(Lcom/apprupt/sdk/SimpleJSON;Lcom/apprupt/sdk/CvValueExchange$RewardConfig;)Lcom/apprupt/sdk/CvValueExchange$RewardConfig;

    move-result-object v2

    .line 161
    const-string v0, "spaces"

    invoke-virtual {p1, v0}, Lcom/apprupt/sdk/SimpleJSON;->e(Ljava/lang/String;)Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v4

    .line 163
    invoke-virtual {v4}, Lcom/apprupt/sdk/SimpleJSON;->a()Lorg/json/JSONArray;

    move-result-object v8

    .line 165
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 166
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v0, v7

    .line 167
    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 170
    :try_start_0
    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 174
    :goto_4
    if-eqz v1, :cond_4

    .line 175
    new-instance v9, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v9}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    invoke-virtual {v4, v1, v9}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Lcom/apprupt/sdk/SimpleJSON;)Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v9

    invoke-direct {p0, v9, v2}, Lcom/apprupt/sdk/CvValueExchange;->a(Lcom/apprupt/sdk/SimpleJSON;Lcom/apprupt/sdk/CvValueExchange$RewardConfig;)Lcom/apprupt/sdk/CvValueExchange$RewardConfig;

    move-result-object v9

    .line 176
    iget-object v10, p0, Lcom/apprupt/sdk/CvValueExchange;->c:Ljava/util/HashMap;

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v10, Lcom/apprupt/sdk/CvValueExchange$Cappings;

    invoke-virtual {v6, v1}, Lcom/apprupt/sdk/SimpleJSON;->e(Ljava/lang/String;)Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v11

    invoke-direct {v10, p0, v9, v11, v5}, Lcom/apprupt/sdk/CvValueExchange$Cappings;-><init>(Lcom/apprupt/sdk/CvValueExchange;Lcom/apprupt/sdk/CvValueExchange$RewardConfig;Lcom/apprupt/sdk/SimpleJSON;Lcom/apprupt/sdk/CvValueExchange$1;)V

    .line 178
    iget-object v9, p0, Lcom/apprupt/sdk/CvValueExchange;->d:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v9, Lcom/apprupt/sdk/CvValueExchange;->a:Lcom/apprupt/sdk/Logger$log;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const-string v12, "ve config for"

    aput-object v12, v11, v7

    aput-object v1, v11, v3

    invoke-static {v10}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->a(Lcom/apprupt/sdk/CvValueExchange$Cappings;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v13

    invoke-interface {v9, v11}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 167
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 157
    :cond_5
    new-instance v0, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v0}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    move-object v6, v0

    goto :goto_2

    .line 171
    :catch_0
    move-exception v1

    move-object v1, v5

    goto :goto_4

    .line 182
    :cond_6
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvValueExchange;->b()V

    goto/16 :goto_1
.end method

.method a(Ljava/lang/String;Lcom/apprupt/sdk/mediation/Adapter;Lcom/apprupt/sdk/mediation/AdWrapper;)V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/apprupt/sdk/CvValueExchange$1;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/CvValueExchange$1;-><init>(Lcom/apprupt/sdk/CvValueExchange;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method

.method b()V
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 187
    new-instance v3, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v3}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    .line 188
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvValueExchange$Cappings;

    invoke-static {v0}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->b(Lcom/apprupt/sdk/CvValueExchange$Cappings;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvValueExchange;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 193
    const-string v1, "cappings"

    invoke-virtual {v3}, Lcom/apprupt/sdk/SimpleJSON;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    return-void
.end method
