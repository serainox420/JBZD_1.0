.class final enum Lcom/apprupt/sdk/CvAppsList$State;
.super Ljava/lang/Enum;
.source "CvAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apprupt/sdk/CvAppsList$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apprupt/sdk/CvAppsList$State;

.field public static final enum b:Lcom/apprupt/sdk/CvAppsList$State;

.field public static final enum c:Lcom/apprupt/sdk/CvAppsList$State;

.field private static final synthetic d:[Lcom/apprupt/sdk/CvAppsList$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/apprupt/sdk/CvAppsList$State;

    const-string v1, "YES"

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvAppsList$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAppsList$State;->a:Lcom/apprupt/sdk/CvAppsList$State;

    new-instance v0, Lcom/apprupt/sdk/CvAppsList$State;

    const-string v1, "NO"

    invoke-direct {v0, v1, v3}, Lcom/apprupt/sdk/CvAppsList$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAppsList$State;->b:Lcom/apprupt/sdk/CvAppsList$State;

    new-instance v0, Lcom/apprupt/sdk/CvAppsList$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/apprupt/sdk/CvAppsList$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAppsList$State;->c:Lcom/apprupt/sdk/CvAppsList$State;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/apprupt/sdk/CvAppsList$State;

    sget-object v1, Lcom/apprupt/sdk/CvAppsList$State;->a:Lcom/apprupt/sdk/CvAppsList$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apprupt/sdk/CvAppsList$State;->b:Lcom/apprupt/sdk/CvAppsList$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apprupt/sdk/CvAppsList$State;->c:Lcom/apprupt/sdk/CvAppsList$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/apprupt/sdk/CvAppsList$State;->d:[Lcom/apprupt/sdk/CvAppsList$State;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apprupt/sdk/CvAppsList$State;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/apprupt/sdk/CvAppsList$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvAppsList$State;

    return-object v0
.end method

.method public static values()[Lcom/apprupt/sdk/CvAppsList$State;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/apprupt/sdk/CvAppsList$State;->d:[Lcom/apprupt/sdk/CvAppsList$State;

    invoke-virtual {v0}, [Lcom/apprupt/sdk/CvAppsList$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apprupt/sdk/CvAppsList$State;

    return-object v0
.end method
