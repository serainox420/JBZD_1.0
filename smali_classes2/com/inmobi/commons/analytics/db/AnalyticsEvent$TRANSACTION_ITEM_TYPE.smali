.class public final enum Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;
.super Ljava/lang/Enum;
.source "AnalyticsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TRANSACTION_ITEM_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INAPP:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

.field public static final enum INVALID:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

.field public static final enum SUBSCRIPTION:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

.field private static final synthetic b:[Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 16
    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    const-string v1, "INVALID"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->INVALID:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    const-string v1, "INAPP"

    invoke-direct {v0, v1, v3, v3}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->INAPP:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    const-string v1, "SUBSCRIPTION"

    invoke-direct {v0, v1, v4, v4}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->SUBSCRIPTION:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    sget-object v1, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->INVALID:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->INAPP:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->SUBSCRIPTION:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->b:[Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->a:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->b:[Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    invoke-virtual {v0}, [Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->a:I

    return v0
.end method
