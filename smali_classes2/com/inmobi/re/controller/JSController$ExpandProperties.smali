.class public Lcom/inmobi/re/controller/JSController$ExpandProperties;
.super Lcom/inmobi/re/controller/JSController$ReflectedParcelable;
.source "JSController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/re/controller/JSController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandProperties"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inmobi/re/controller/JSController$ExpandProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actualHeightRequested:I

.field public actualWidthRequested:I

.field public bottomStuff:I

.field public currentX:I

.field public currentY:I

.field public height:I

.field public isModal:Z

.field public lockOrientation:Z

.field public orientation:Ljava/lang/String;

.field public portraitHeightRequested:I

.field public portraitWidthRequested:I

.field public rotationAtExpand:Ljava/lang/String;

.field public topStuff:I

.field public useCustomClose:Z

.field public width:I

.field public x:I

.field public y:I

.field public zeroWidthHeight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/inmobi/re/controller/JSController$ExpandProperties$1;

    invoke-direct {v0}, Lcom/inmobi/re/controller/JSController$ExpandProperties$1;-><init>()V

    sput-object v0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/inmobi/re/controller/JSController$ReflectedParcelable;-><init>()V

    .line 182
    invoke-virtual {p0}, Lcom/inmobi/re/controller/JSController$ExpandProperties;->reinitializeExpandProperties()V

    .line 183
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/inmobi/re/controller/JSController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    .line 218
    return-void
.end method


# virtual methods
.method public reinitializeExpandProperties()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 186
    iput v1, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    .line 187
    iput v1, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    .line 188
    iput v0, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    .line 189
    iput v0, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    .line 190
    iput-boolean v1, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->useCustomClose:Z

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->isModal:Z

    .line 192
    iput-boolean v1, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->lockOrientation:Z

    .line 193
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    .line 194
    iput v1, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 195
    iput v1, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 196
    iput v1, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->topStuff:I

    .line 197
    iput v1, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->bottomStuff:I

    .line 198
    iput v1, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    .line 199
    iput v1, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    .line 200
    iput-boolean v1, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->zeroWidthHeight:Z

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->rotationAtExpand:Ljava/lang/String;

    .line 202
    iput v1, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentX:I

    .line 203
    iput v1, p0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentY:I

    .line 204
    return-void
.end method
