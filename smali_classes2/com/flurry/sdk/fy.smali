.class public final enum Lcom/flurry/sdk/fy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/fy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/fy;

.field public static final enum b:Lcom/flurry/sdk/fy;

.field public static final enum c:Lcom/flurry/sdk/fy;

.field public static final enum d:Lcom/flurry/sdk/fy;

.field private static final synthetic f:[Lcom/flurry/sdk/fy;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/flurry/sdk/fy;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/sdk/fy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/fy;->a:Lcom/flurry/sdk/fy;

    new-instance v0, Lcom/flurry/sdk/fy;

    const-string v1, "ClickThrough"

    invoke-direct {v0, v1, v3, v3}, Lcom/flurry/sdk/fy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/fy;->b:Lcom/flurry/sdk/fy;

    new-instance v0, Lcom/flurry/sdk/fy;

    const-string v1, "ClickTracking"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/sdk/fy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/fy;->c:Lcom/flurry/sdk/fy;

    new-instance v0, Lcom/flurry/sdk/fy;

    const-string v1, "CustomClick"

    invoke-direct {v0, v1, v5, v5}, Lcom/flurry/sdk/fy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/fy;->d:Lcom/flurry/sdk/fy;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/flurry/sdk/fy;

    sget-object v1, Lcom/flurry/sdk/fy;->a:Lcom/flurry/sdk/fy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/fy;->b:Lcom/flurry/sdk/fy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/fy;->c:Lcom/flurry/sdk/fy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/fy;->d:Lcom/flurry/sdk/fy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/fy;->f:[Lcom/flurry/sdk/fy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/flurry/sdk/fy;->e:I

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/fy;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/flurry/sdk/fy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fy;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/fy;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/flurry/sdk/fy;->f:[Lcom/flurry/sdk/fy;

    invoke-virtual {v0}, [Lcom/flurry/sdk/fy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/fy;

    return-object v0
.end method
