.class public final enum Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;
.super Ljava/lang/Enum;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/view/mraid/OrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForcedOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

.field public static final enum landscape:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

.field public static final enum none:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

.field public static final enum portrait:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    const-string v1, "none"

    invoke-direct {v0, v1, v2}, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;->none:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    .line 66
    new-instance v0, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    const-string v1, "portrait"

    invoke-direct {v0, v1, v3}, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;->portrait:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    .line 67
    new-instance v0, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    const-string v1, "landscape"

    invoke-direct {v0, v1, v4}, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;->landscape:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    sget-object v1, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;->none:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;->portrait:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;->landscape:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;->$VALUES:[Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    return-object v0
.end method

.method public static values()[Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;->$VALUES:[Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    invoke-virtual {v0}, [Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    return-object v0
.end method
