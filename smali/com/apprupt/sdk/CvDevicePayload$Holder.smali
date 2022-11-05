.class Lcom/apprupt/sdk/CvDevicePayload$Holder;
.super Ljava/lang/Object;
.source "CvDevicePayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvDevicePayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static a:Lcom/apprupt/sdk/CvDevicePayload;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/apprupt/sdk/CvDevicePayload;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apprupt/sdk/CvDevicePayload;-><init>(Lcom/apprupt/sdk/CvDevicePayload$1;)V

    sput-object v0, Lcom/apprupt/sdk/CvDevicePayload$Holder;->a:Lcom/apprupt/sdk/CvDevicePayload;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/apprupt/sdk/CvDevicePayload;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/apprupt/sdk/CvDevicePayload$Holder;->a:Lcom/apprupt/sdk/CvDevicePayload;

    return-object v0
.end method
