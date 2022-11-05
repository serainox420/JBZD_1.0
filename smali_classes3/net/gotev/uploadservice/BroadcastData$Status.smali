.class public final enum Lnet/gotev/uploadservice/BroadcastData$Status;
.super Ljava/lang/Enum;
.source "BroadcastData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/gotev/uploadservice/BroadcastData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/gotev/uploadservice/BroadcastData$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELLED:Lnet/gotev/uploadservice/BroadcastData$Status;

.field public static final enum COMPLETED:Lnet/gotev/uploadservice/BroadcastData$Status;

.field public static final enum ERROR:Lnet/gotev/uploadservice/BroadcastData$Status;

.field public static final enum IN_PROGRESS:Lnet/gotev/uploadservice/BroadcastData$Status;

.field private static final synthetic a:[Lnet/gotev/uploadservice/BroadcastData$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lnet/gotev/uploadservice/BroadcastData$Status;

    const-string v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v2}, Lnet/gotev/uploadservice/BroadcastData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/gotev/uploadservice/BroadcastData$Status;->IN_PROGRESS:Lnet/gotev/uploadservice/BroadcastData$Status;

    .line 17
    new-instance v0, Lnet/gotev/uploadservice/BroadcastData$Status;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lnet/gotev/uploadservice/BroadcastData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/gotev/uploadservice/BroadcastData$Status;->ERROR:Lnet/gotev/uploadservice/BroadcastData$Status;

    .line 18
    new-instance v0, Lnet/gotev/uploadservice/BroadcastData$Status;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v4}, Lnet/gotev/uploadservice/BroadcastData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/gotev/uploadservice/BroadcastData$Status;->COMPLETED:Lnet/gotev/uploadservice/BroadcastData$Status;

    .line 19
    new-instance v0, Lnet/gotev/uploadservice/BroadcastData$Status;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v5}, Lnet/gotev/uploadservice/BroadcastData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/gotev/uploadservice/BroadcastData$Status;->CANCELLED:Lnet/gotev/uploadservice/BroadcastData$Status;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lnet/gotev/uploadservice/BroadcastData$Status;

    sget-object v1, Lnet/gotev/uploadservice/BroadcastData$Status;->IN_PROGRESS:Lnet/gotev/uploadservice/BroadcastData$Status;

    aput-object v1, v0, v2

    sget-object v1, Lnet/gotev/uploadservice/BroadcastData$Status;->ERROR:Lnet/gotev/uploadservice/BroadcastData$Status;

    aput-object v1, v0, v3

    sget-object v1, Lnet/gotev/uploadservice/BroadcastData$Status;->COMPLETED:Lnet/gotev/uploadservice/BroadcastData$Status;

    aput-object v1, v0, v4

    sget-object v1, Lnet/gotev/uploadservice/BroadcastData$Status;->CANCELLED:Lnet/gotev/uploadservice/BroadcastData$Status;

    aput-object v1, v0, v5

    sput-object v0, Lnet/gotev/uploadservice/BroadcastData$Status;->a:[Lnet/gotev/uploadservice/BroadcastData$Status;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/gotev/uploadservice/BroadcastData$Status;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lnet/gotev/uploadservice/BroadcastData$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/BroadcastData$Status;

    return-object v0
.end method

.method public static values()[Lnet/gotev/uploadservice/BroadcastData$Status;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lnet/gotev/uploadservice/BroadcastData$Status;->a:[Lnet/gotev/uploadservice/BroadcastData$Status;

    invoke-virtual {v0}, [Lnet/gotev/uploadservice/BroadcastData$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/gotev/uploadservice/BroadcastData$Status;

    return-object v0
.end method
