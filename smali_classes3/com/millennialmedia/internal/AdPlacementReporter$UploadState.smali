.class final enum Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;
.super Ljava/lang/Enum;
.source "AdPlacementReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/AdPlacementReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UploadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ERROR_NETWORK_UNAVAILABLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

.field public static final enum ERROR_SENDING_TO_SERVER:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

.field public static final enum IDLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

.field public static final enum UPLOADING:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

.field private static final synthetic a:[Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->IDLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    .line 157
    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    const-string v1, "UPLOADING"

    invoke-direct {v0, v1, v3}, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->UPLOADING:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    .line 158
    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    const-string v1, "ERROR_NETWORK_UNAVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ERROR_NETWORK_UNAVAILABLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    .line 159
    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    const-string v1, "ERROR_SENDING_TO_SERVER"

    invoke-direct {v0, v1, v5}, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ERROR_SENDING_TO_SERVER:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    .line 155
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    sget-object v1, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->IDLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->UPLOADING:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ERROR_NETWORK_UNAVAILABLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ERROR_SENDING_TO_SERVER:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->a:[Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

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
    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;
    .locals 1

    .prologue
    .line 155
    const-class v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->a:[Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    invoke-virtual {v0}, [Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    return-object v0
.end method
