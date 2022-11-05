.class public final enum Lcom/inmobi/monetization/internal/configs/NetworkEventType;
.super Ljava/lang/Enum;
.source "NetworkEventType.java"

# interfaces
.implements Lcom/inmobi/commons/metric/EventType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/monetization/internal/configs/NetworkEventType;",
        ">;",
        "Lcom/inmobi/commons/metric/EventType;"
    }
.end annotation


# static fields
.field public static final enum CONNECT_ERROR:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

.field public static final enum FETCH_COMPLETE:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

.field public static final enum RENDER_COMPLETE:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

.field public static final enum RENDER_TIMEOUT:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

.field public static final enum RESPONSE_ERROR:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

.field private static final synthetic b:[Lcom/inmobi/monetization/internal/configs/NetworkEventType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    const-string v1, "FETCH_COMPLETE"

    invoke-direct {v0, v1, v2, v2}, Lcom/inmobi/monetization/internal/configs/NetworkEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->FETCH_COMPLETE:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    .line 7
    new-instance v0, Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    const-string v1, "RENDER_COMPLETE"

    invoke-direct {v0, v1, v3, v3}, Lcom/inmobi/monetization/internal/configs/NetworkEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->RENDER_COMPLETE:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    .line 9
    new-instance v0, Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    const-string v1, "CONNECT_ERROR"

    invoke-direct {v0, v1, v4, v4}, Lcom/inmobi/monetization/internal/configs/NetworkEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->CONNECT_ERROR:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    .line 10
    new-instance v0, Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    const-string v1, "RESPONSE_ERROR"

    invoke-direct {v0, v1, v5, v5}, Lcom/inmobi/monetization/internal/configs/NetworkEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->RESPONSE_ERROR:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    .line 11
    new-instance v0, Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    const-string v1, "RENDER_TIMEOUT"

    invoke-direct {v0, v1, v6, v6}, Lcom/inmobi/monetization/internal/configs/NetworkEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->RENDER_TIMEOUT:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    .line 5
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    sget-object v1, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->FETCH_COMPLETE:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->RENDER_COMPLETE:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->CONNECT_ERROR:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->RESPONSE_ERROR:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->RENDER_TIMEOUT:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->b:[Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->a:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/monetization/internal/configs/NetworkEventType;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/monetization/internal/configs/NetworkEventType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->b:[Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    invoke-virtual {v0}, [Lcom/inmobi/monetization/internal/configs/NetworkEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->a:I

    return v0
.end method
