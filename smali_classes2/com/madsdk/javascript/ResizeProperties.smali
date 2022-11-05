.class public Lcom/madsdk/javascript/ResizeProperties;
.super Ljava/lang/Object;
.source "ResizeProperties.java"


# instance fields
.field public allowOffscreen:Z

.field public customClosePosition:Ljava/lang/String;

.field public height:I

.field public offsetX:I

.field public offsetY:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "top-right"

    iput-object v0, p0, Lcom/madsdk/javascript/ResizeProperties;->customClosePosition:Ljava/lang/String;

    return-void
.end method
