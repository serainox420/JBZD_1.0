.class public Lcom/inmobi/re/controller/JSController$Properties;
.super Lcom/inmobi/re/controller/JSController$ReflectedParcelable;
.source "JSController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/re/controller/JSController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inmobi/re/controller/JSController$Properties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public backgroundColor:I

.field public backgroundOpacity:F

.field public useBackground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lcom/inmobi/re/controller/JSController$Properties$1;

    invoke-direct {v0}, Lcom/inmobi/re/controller/JSController$Properties$1;-><init>()V

    sput-object v0, Lcom/inmobi/re/controller/JSController$Properties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 350
    invoke-direct {p0}, Lcom/inmobi/re/controller/JSController$ReflectedParcelable;-><init>()V

    .line 351
    iput-boolean v0, p0, Lcom/inmobi/re/controller/JSController$Properties;->useBackground:Z

    .line 352
    iput v0, p0, Lcom/inmobi/re/controller/JSController$Properties;->backgroundColor:I

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/re/controller/JSController$Properties;->backgroundOpacity:F

    .line 354
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/inmobi/re/controller/JSController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    .line 345
    return-void
.end method
