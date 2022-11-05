.class public final enum Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;
.super Ljava/lang/Enum;
.source "AnalyticsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TRANSACTION_STATUS_SERVER_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAILED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

.field public static final enum INVALID:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

.field public static final enum PURCHASED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

.field public static final enum REFUNDED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

.field public static final enum RESTORED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

.field private static final synthetic b:[Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 29
    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    const-string v1, "INVALID"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->INVALID:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v3, v3}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->PURCHASED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4, v4}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->FAILED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    const-string v1, "RESTORED"

    invoke-direct {v0, v1, v5, v5}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->RESTORED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v6, v6}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->REFUNDED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    sget-object v1, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->INVALID:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->PURCHASED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->FAILED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->RESTORED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->REFUNDED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->b:[Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->a:I

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->b:[Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    invoke-virtual {v0}, [Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->a:I

    return v0
.end method
