.class final enum Lcom/smaato/soma/internal/statemachine/BannerState$a;
.super Ljava/lang/Enum;
.source "BannerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/internal/statemachine/BannerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smaato/soma/internal/statemachine/BannerState$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/smaato/soma/internal/statemachine/BannerState$a;

.field public static final enum b:Lcom/smaato/soma/internal/statemachine/BannerState$a;

.field public static final enum c:Lcom/smaato/soma/internal/statemachine/BannerState$a;

.field public static final enum d:Lcom/smaato/soma/internal/statemachine/BannerState$a;

.field private static final synthetic e:[Lcom/smaato/soma/internal/statemachine/BannerState$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/smaato/soma/internal/statemachine/BannerState$a;

    const-string v1, "TRANSITION_EXPANDBANNER"

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/internal/statemachine/BannerState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/internal/statemachine/BannerState$a;->a:Lcom/smaato/soma/internal/statemachine/BannerState$a;

    .line 64
    new-instance v0, Lcom/smaato/soma/internal/statemachine/BannerState$a;

    const-string v1, "TRANSITION_CLOSENOORMMA"

    invoke-direct {v0, v1, v3}, Lcom/smaato/soma/internal/statemachine/BannerState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/internal/statemachine/BannerState$a;->b:Lcom/smaato/soma/internal/statemachine/BannerState$a;

    .line 68
    new-instance v0, Lcom/smaato/soma/internal/statemachine/BannerState$a;

    const-string v1, "TRANSITION_CLOSEORMMA"

    invoke-direct {v0, v1, v4}, Lcom/smaato/soma/internal/statemachine/BannerState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/internal/statemachine/BannerState$a;->c:Lcom/smaato/soma/internal/statemachine/BannerState$a;

    .line 72
    new-instance v0, Lcom/smaato/soma/internal/statemachine/BannerState$a;

    const-string v1, "TRANSITION_DISPLAYBANNER"

    invoke-direct {v0, v1, v5}, Lcom/smaato/soma/internal/statemachine/BannerState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/internal/statemachine/BannerState$a;->d:Lcom/smaato/soma/internal/statemachine/BannerState$a;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smaato/soma/internal/statemachine/BannerState$a;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/BannerState$a;->a:Lcom/smaato/soma/internal/statemachine/BannerState$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smaato/soma/internal/statemachine/BannerState$a;->b:Lcom/smaato/soma/internal/statemachine/BannerState$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smaato/soma/internal/statemachine/BannerState$a;->c:Lcom/smaato/soma/internal/statemachine/BannerState$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smaato/soma/internal/statemachine/BannerState$a;->d:Lcom/smaato/soma/internal/statemachine/BannerState$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/smaato/soma/internal/statemachine/BannerState$a;->e:[Lcom/smaato/soma/internal/statemachine/BannerState$a;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smaato/soma/internal/statemachine/BannerState$a;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/smaato/soma/internal/statemachine/BannerState$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/internal/statemachine/BannerState$a;

    return-object v0
.end method

.method public static values()[Lcom/smaato/soma/internal/statemachine/BannerState$a;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/smaato/soma/internal/statemachine/BannerState$a;->e:[Lcom/smaato/soma/internal/statemachine/BannerState$a;

    invoke-virtual {v0}, [Lcom/smaato/soma/internal/statemachine/BannerState$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smaato/soma/internal/statemachine/BannerState$a;

    return-object v0
.end method
