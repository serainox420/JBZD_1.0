.class public Lcom/madsdk/javascript/OrientationProperties;
.super Ljava/lang/Object;
.source "OrientationProperties.java"


# static fields
.field public static final ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final ORIENTATION_NONE:Ljava/lang/String; = "none"

.field public static final ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"


# instance fields
.field public allowOrientationChange:Z

.field public forceOrientation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/madsdk/javascript/OrientationProperties;->allowOrientationChange:Z

    .line 11
    const-string v0, "none"

    iput-object v0, p0, Lcom/madsdk/javascript/OrientationProperties;->forceOrientation:Ljava/lang/String;

    return-void
.end method
