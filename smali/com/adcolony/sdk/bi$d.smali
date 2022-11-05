.class final enum Lcom/adcolony/sdk/bi$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adcolony/sdk/bi$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adcolony/sdk/bi$d;

.field public static final enum b:Lcom/adcolony/sdk/bi$d;

.field public static final enum c:Lcom/adcolony/sdk/bi$d;

.field public static final enum d:Lcom/adcolony/sdk/bi$d;

.field public static final enum e:Lcom/adcolony/sdk/bi$d;

.field private static final synthetic f:[Lcom/adcolony/sdk/bi$d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/adcolony/sdk/bi$d;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bi$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bi$d;->a:Lcom/adcolony/sdk/bi$d;

    .line 88
    new-instance v0, Lcom/adcolony/sdk/bi$d;

    const-string v1, "SPLASH"

    invoke-direct {v0, v1, v3}, Lcom/adcolony/sdk/bi$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bi$d;->b:Lcom/adcolony/sdk/bi$d;

    .line 89
    new-instance v0, Lcom/adcolony/sdk/bi$d;

    const-string v1, "BASE"

    invoke-direct {v0, v1, v4}, Lcom/adcolony/sdk/bi$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bi$d;->c:Lcom/adcolony/sdk/bi$d;

    .line 90
    new-instance v0, Lcom/adcolony/sdk/bi$d;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v5}, Lcom/adcolony/sdk/bi$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bi$d;->d:Lcom/adcolony/sdk/bi$d;

    .line 91
    new-instance v0, Lcom/adcolony/sdk/bi$d;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/adcolony/sdk/bi$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bi$d;->e:Lcom/adcolony/sdk/bi$d;

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/adcolony/sdk/bi$d;

    sget-object v1, Lcom/adcolony/sdk/bi$d;->a:Lcom/adcolony/sdk/bi$d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adcolony/sdk/bi$d;->b:Lcom/adcolony/sdk/bi$d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adcolony/sdk/bi$d;->c:Lcom/adcolony/sdk/bi$d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adcolony/sdk/bi$d;->d:Lcom/adcolony/sdk/bi$d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adcolony/sdk/bi$d;->e:Lcom/adcolony/sdk/bi$d;

    aput-object v1, v0, v6

    sput-object v0, Lcom/adcolony/sdk/bi$d;->f:[Lcom/adcolony/sdk/bi$d;

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
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adcolony/sdk/bi$d;
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/adcolony/sdk/bi$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/bi$d;

    return-object v0
.end method

.method public static values()[Lcom/adcolony/sdk/bi$d;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/adcolony/sdk/bi$d;->f:[Lcom/adcolony/sdk/bi$d;

    invoke-virtual {v0}, [Lcom/adcolony/sdk/bi$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adcolony/sdk/bi$d;

    return-object v0
.end method
