.class public final enum Lcom/inmobi/commons/InMobi$LOG_LEVEL;
.super Ljava/lang/Enum;
.source "InMobi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/InMobi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOG_LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/InMobi$LOG_LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

.field public static final enum NONE:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

.field public static final enum VERBOSE:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

.field private static final synthetic b:[Lcom/inmobi/commons/InMobi$LOG_LEVEL;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    new-instance v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/inmobi/commons/InMobi$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->NONE:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    .line 180
    new-instance v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v3, v3}, Lcom/inmobi/commons/InMobi$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    .line 184
    new-instance v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v4, v4}, Lcom/inmobi/commons/InMobi$LOG_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->VERBOSE:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    .line 172
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    sget-object v1, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->NONE:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->VERBOSE:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->b:[Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 189
    iput p3, p0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->a:I

    .line 190
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/InMobi$LOG_LEVEL;
    .locals 1

    .prologue
    .line 172
    const-class v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/InMobi$LOG_LEVEL;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->b:[Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    invoke-virtual {v0}, [Lcom/inmobi/commons/InMobi$LOG_LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->a:I

    return v0
.end method
