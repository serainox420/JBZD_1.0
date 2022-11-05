.class final enum Lcom/apprupt/sdk/CvValueExchange$Status;
.super Ljava/lang/Enum;
.source "CvValueExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvValueExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apprupt/sdk/CvValueExchange$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apprupt/sdk/CvValueExchange$Status;

.field public static final enum b:Lcom/apprupt/sdk/CvValueExchange$Status;

.field public static final enum c:Lcom/apprupt/sdk/CvValueExchange$Status;

.field private static final synthetic d:[Lcom/apprupt/sdk/CvValueExchange$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/apprupt/sdk/CvValueExchange$Status;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvValueExchange$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvValueExchange$Status;->a:Lcom/apprupt/sdk/CvValueExchange$Status;

    new-instance v0, Lcom/apprupt/sdk/CvValueExchange$Status;

    const-string v1, "READY"

    invoke-direct {v0, v1, v3}, Lcom/apprupt/sdk/CvValueExchange$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvValueExchange$Status;->b:Lcom/apprupt/sdk/CvValueExchange$Status;

    new-instance v0, Lcom/apprupt/sdk/CvValueExchange$Status;

    const-string v1, "EXCEEDED"

    invoke-direct {v0, v1, v4}, Lcom/apprupt/sdk/CvValueExchange$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvValueExchange$Status;->c:Lcom/apprupt/sdk/CvValueExchange$Status;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/apprupt/sdk/CvValueExchange$Status;

    sget-object v1, Lcom/apprupt/sdk/CvValueExchange$Status;->a:Lcom/apprupt/sdk/CvValueExchange$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apprupt/sdk/CvValueExchange$Status;->b:Lcom/apprupt/sdk/CvValueExchange$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apprupt/sdk/CvValueExchange$Status;->c:Lcom/apprupt/sdk/CvValueExchange$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/apprupt/sdk/CvValueExchange$Status;->d:[Lcom/apprupt/sdk/CvValueExchange$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apprupt/sdk/CvValueExchange$Status;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/apprupt/sdk/CvValueExchange$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvValueExchange$Status;

    return-object v0
.end method

.method public static values()[Lcom/apprupt/sdk/CvValueExchange$Status;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/apprupt/sdk/CvValueExchange$Status;->d:[Lcom/apprupt/sdk/CvValueExchange$Status;

    invoke-virtual {v0}, [Lcom/apprupt/sdk/CvValueExchange$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apprupt/sdk/CvValueExchange$Status;

    return-object v0
.end method
