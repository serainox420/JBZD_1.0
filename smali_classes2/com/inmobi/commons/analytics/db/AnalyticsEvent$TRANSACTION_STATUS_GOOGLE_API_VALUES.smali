.class public final enum Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;
.super Ljava/lang/Enum;
.source "AnalyticsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TRANSACTION_STATUS_GOOGLE_API_VALUES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAILED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

.field public static final enum PURCHASED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

.field public static final enum REFUNDED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

.field private static final synthetic b:[Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2, v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;->PURCHASED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3, v3}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;->FAILED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4, v4}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;->REFUNDED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    sget-object v1, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;->PURCHASED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;->FAILED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;->REFUNDED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;->b:[Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;->a:I

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;->b:[Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    invoke-virtual {v0}, [Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;->a:I

    return v0
.end method
