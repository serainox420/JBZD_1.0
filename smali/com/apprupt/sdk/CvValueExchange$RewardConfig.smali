.class Lcom/apprupt/sdk/CvValueExchange$RewardConfig;
.super Ljava/lang/Object;
.source "CvValueExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvValueExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RewardConfig"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:I

.field final synthetic d:Lcom/apprupt/sdk/CvValueExchange;


# direct methods
.method private constructor <init>(Lcom/apprupt/sdk/CvValueExchange;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/apprupt/sdk/CvValueExchange$RewardConfig;->d:Lcom/apprupt/sdk/CvValueExchange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/apprupt/sdk/CvValueExchange$RewardConfig;->a:Ljava/lang/String;

    .line 52
    iput p3, p0, Lcom/apprupt/sdk/CvValueExchange$RewardConfig;->b:I

    .line 53
    iput p4, p0, Lcom/apprupt/sdk/CvValueExchange$RewardConfig;->c:I

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/apprupt/sdk/CvValueExchange;Ljava/lang/String;IILcom/apprupt/sdk/CvValueExchange$1;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apprupt/sdk/CvValueExchange$RewardConfig;-><init>(Lcom/apprupt/sdk/CvValueExchange;Ljava/lang/String;II)V

    return-void
.end method
