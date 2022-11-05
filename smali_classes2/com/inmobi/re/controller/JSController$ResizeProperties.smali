.class public Lcom/inmobi/re/controller/JSController$ResizeProperties;
.super Lcom/inmobi/re/controller/JSController$ReflectedParcelable;
.source "JSController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/re/controller/JSController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResizeProperties"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inmobi/re/controller/JSController$ResizeProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowOffscreen:Z

.field public customClosePosition:Ljava/lang/String;

.field public height:I

.field public offsetX:I

.field public offsetY:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/inmobi/re/controller/JSController$ResizeProperties$1;

    invoke-direct {v0}, Lcom/inmobi/re/controller/JSController$ResizeProperties$1;-><init>()V

    sput-object v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/inmobi/re/controller/JSController$ReflectedParcelable;-><init>()V

    .line 256
    invoke-virtual {p0}, Lcom/inmobi/re/controller/JSController$ResizeProperties;->initializeResizeProperties()V

    .line 257
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/inmobi/re/controller/JSController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    .line 277
    return-void
.end method


# virtual methods
.method public initializeResizeProperties()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 260
    iput v0, p0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetY:I

    iput v0, p0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetX:I

    iput v0, p0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    iput v0, p0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    .line 261
    iput-boolean v0, p0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->allowOffscreen:Z

    .line 262
    const-string v0, "top-right"

    iput-object v0, p0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->customClosePosition:Ljava/lang/String;

    .line 263
    return-void
.end method
