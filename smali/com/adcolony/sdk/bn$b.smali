.class final enum Lcom/adcolony/sdk/bn$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adcolony/sdk/bn$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adcolony/sdk/bn$b;

.field public static final enum b:Lcom/adcolony/sdk/bn$b;

.field public static final enum c:Lcom/adcolony/sdk/bn$b;

.field public static final enum d:Lcom/adcolony/sdk/bn$b;

.field public static final enum e:Lcom/adcolony/sdk/bn$b;

.field private static final synthetic f:[Lcom/adcolony/sdk/bn$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    new-instance v0, Lcom/adcolony/sdk/bn$b;

    const-string v1, "YVOLVER_SEVERITY_NONE"

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bn$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$b;->a:Lcom/adcolony/sdk/bn$b;

    .line 172
    new-instance v0, Lcom/adcolony/sdk/bn$b;

    const-string v1, "YVOLVER_SEVERITY_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/adcolony/sdk/bn$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$b;->b:Lcom/adcolony/sdk/bn$b;

    .line 173
    new-instance v0, Lcom/adcolony/sdk/bn$b;

    const-string v1, "YVOLVER_SEVERITY_WARNING"

    invoke-direct {v0, v1, v4}, Lcom/adcolony/sdk/bn$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$b;->c:Lcom/adcolony/sdk/bn$b;

    .line 174
    new-instance v0, Lcom/adcolony/sdk/bn$b;

    const-string v1, "YVOLVER_SEVERITY_NOTICE"

    invoke-direct {v0, v1, v5}, Lcom/adcolony/sdk/bn$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$b;->d:Lcom/adcolony/sdk/bn$b;

    .line 175
    new-instance v0, Lcom/adcolony/sdk/bn$b;

    const-string v1, "YVOLVER_SEVERITY_DEBUG"

    invoke-direct {v0, v1, v6}, Lcom/adcolony/sdk/bn$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bn$b;->e:Lcom/adcolony/sdk/bn$b;

    .line 170
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/adcolony/sdk/bn$b;

    sget-object v1, Lcom/adcolony/sdk/bn$b;->a:Lcom/adcolony/sdk/bn$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adcolony/sdk/bn$b;->b:Lcom/adcolony/sdk/bn$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adcolony/sdk/bn$b;->c:Lcom/adcolony/sdk/bn$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adcolony/sdk/bn$b;->d:Lcom/adcolony/sdk/bn$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adcolony/sdk/bn$b;->e:Lcom/adcolony/sdk/bn$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/adcolony/sdk/bn$b;->f:[Lcom/adcolony/sdk/bn$b;

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
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adcolony/sdk/bn$b;
    .locals 1

    .prologue
    .line 170
    const-class v0, Lcom/adcolony/sdk/bn$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/bn$b;

    return-object v0
.end method

.method public static values()[Lcom/adcolony/sdk/bn$b;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/adcolony/sdk/bn$b;->f:[Lcom/adcolony/sdk/bn$b;

    invoke-virtual {v0}, [Lcom/adcolony/sdk/bn$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adcolony/sdk/bn$b;

    return-object v0
.end method
