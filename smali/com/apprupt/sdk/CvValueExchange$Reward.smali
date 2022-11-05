.class public Lcom/apprupt/sdk/CvValueExchange$Reward;
.super Ljava/lang/Object;
.source "CvValueExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvValueExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Reward"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field final synthetic d:Lcom/apprupt/sdk/CvValueExchange;


# direct methods
.method private constructor <init>(Lcom/apprupt/sdk/CvValueExchange;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/apprupt/sdk/CvValueExchange$Reward;->d:Lcom/apprupt/sdk/CvValueExchange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p2, p0, Lcom/apprupt/sdk/CvValueExchange$Reward;->a:I

    .line 41
    iput-object p3, p0, Lcom/apprupt/sdk/CvValueExchange$Reward;->b:Ljava/lang/String;

    .line 42
    iput p4, p0, Lcom/apprupt/sdk/CvValueExchange$Reward;->c:I

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/apprupt/sdk/CvValueExchange;ILjava/lang/String;ILcom/apprupt/sdk/CvValueExchange$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apprupt/sdk/CvValueExchange$Reward;-><init>(Lcom/apprupt/sdk/CvValueExchange;ILjava/lang/String;I)V

    return-void
.end method
