.class final enum Lcom/millennialmedia/internal/SizableStateManager$SizableState;
.super Ljava/lang/Enum;
.source "SizableStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/SizableStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SizableState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/millennialmedia/internal/SizableStateManager$SizableState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum STATE_COLLAPSED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

.field public static final enum STATE_EXPANDED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

.field public static final enum STATE_RESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

.field public static final enum STATE_UNRESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

.field private static final synthetic a:[Lcom/millennialmedia/internal/SizableStateManager$SizableState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    const-string v1, "STATE_RESIZED"

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/SizableStateManager$SizableState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_RESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    .line 91
    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    const-string v1, "STATE_UNRESIZED"

    invoke-direct {v0, v1, v3}, Lcom/millennialmedia/internal/SizableStateManager$SizableState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_UNRESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    .line 92
    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    const-string v1, "STATE_EXPANDED"

    invoke-direct {v0, v1, v4}, Lcom/millennialmedia/internal/SizableStateManager$SizableState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_EXPANDED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    .line 93
    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    const-string v1, "STATE_COLLAPSED"

    invoke-direct {v0, v1, v5}, Lcom/millennialmedia/internal/SizableStateManager$SizableState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_COLLAPSED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    sget-object v1, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_RESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_UNRESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_EXPANDED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_COLLAPSED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->a:[Lcom/millennialmedia/internal/SizableStateManager$SizableState;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/internal/SizableStateManager$SizableState;
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/internal/SizableStateManager$SizableState;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->a:[Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    invoke-virtual {v0}, [Lcom/millennialmedia/internal/SizableStateManager$SizableState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    return-object v0
.end method
