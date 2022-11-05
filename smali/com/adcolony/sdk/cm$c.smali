.class final enum Lcom/adcolony/sdk/cm$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/cm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adcolony/sdk/cm$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adcolony/sdk/cm$c;

.field public static final enum b:Lcom/adcolony/sdk/cm$c;

.field public static final enum c:Lcom/adcolony/sdk/cm$c;

.field public static final enum d:Lcom/adcolony/sdk/cm$c;

.field public static final enum e:Lcom/adcolony/sdk/cm$c;

.field private static final synthetic f:[Lcom/adcolony/sdk/cm$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/adcolony/sdk/cm$c;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/cm$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$c;->a:Lcom/adcolony/sdk/cm$c;

    .line 26
    new-instance v0, Lcom/adcolony/sdk/cm$c;

    const-string v1, "QUEUED"

    invoke-direct {v0, v1, v3}, Lcom/adcolony/sdk/cm$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$c;->b:Lcom/adcolony/sdk/cm$c;

    .line 27
    new-instance v0, Lcom/adcolony/sdk/cm$c;

    const-string v1, "SHOWING"

    invoke-direct {v0, v1, v4}, Lcom/adcolony/sdk/cm$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$c;->c:Lcom/adcolony/sdk/cm$c;

    .line 28
    new-instance v0, Lcom/adcolony/sdk/cm$c;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v5}, Lcom/adcolony/sdk/cm$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$c;->d:Lcom/adcolony/sdk/cm$c;

    .line 29
    new-instance v0, Lcom/adcolony/sdk/cm$c;

    const-string v1, "DISMISSING"

    invoke-direct {v0, v1, v6}, Lcom/adcolony/sdk/cm$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/cm$c;->e:Lcom/adcolony/sdk/cm$c;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/adcolony/sdk/cm$c;

    sget-object v1, Lcom/adcolony/sdk/cm$c;->a:Lcom/adcolony/sdk/cm$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adcolony/sdk/cm$c;->b:Lcom/adcolony/sdk/cm$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adcolony/sdk/cm$c;->c:Lcom/adcolony/sdk/cm$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adcolony/sdk/cm$c;->d:Lcom/adcolony/sdk/cm$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adcolony/sdk/cm$c;->e:Lcom/adcolony/sdk/cm$c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/adcolony/sdk/cm$c;->f:[Lcom/adcolony/sdk/cm$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adcolony/sdk/cm$c;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/adcolony/sdk/cm$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/cm$c;

    return-object v0
.end method

.method public static values()[Lcom/adcolony/sdk/cm$c;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/adcolony/sdk/cm$c;->f:[Lcom/adcolony/sdk/cm$c;

    invoke-virtual {v0}, [Lcom/adcolony/sdk/cm$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adcolony/sdk/cm$c;

    return-object v0
.end method
