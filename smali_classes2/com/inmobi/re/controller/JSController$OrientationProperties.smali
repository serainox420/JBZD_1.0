.class public Lcom/inmobi/re/controller/JSController$OrientationProperties;
.super Lcom/inmobi/re/controller/JSController$ReflectedParcelable;
.source "JSController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/re/controller/JSController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrientationProperties"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inmobi/re/controller/JSController$OrientationProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowOrientationChange:Z

.field public forceOrientation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 235
    new-instance v0, Lcom/inmobi/re/controller/JSController$OrientationProperties$1;

    invoke-direct {v0}, Lcom/inmobi/re/controller/JSController$OrientationProperties$1;-><init>()V

    sput-object v0, Lcom/inmobi/re/controller/JSController$OrientationProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/inmobi/re/controller/JSController$ReflectedParcelable;-><init>()V

    .line 227
    invoke-virtual {p0}, Lcom/inmobi/re/controller/JSController$OrientationProperties;->initializeOrientationProperties()V

    .line 228
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/inmobi/re/controller/JSController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    .line 247
    return-void
.end method


# virtual methods
.method public initializeOrientationProperties()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/controller/JSController$OrientationProperties;->allowOrientationChange:Z

    .line 232
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/re/controller/JSController$OrientationProperties;->forceOrientation:Ljava/lang/String;

    .line 233
    return-void
.end method
