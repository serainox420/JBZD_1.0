.class public Lcom/madsdk/javascript/ExpandProperties;
.super Ljava/lang/Object;
.source "ExpandProperties.java"


# instance fields
.field public height:I

.field public final isModal:Z

.field public useCustomClose:Z

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/madsdk/javascript/ExpandProperties;->isModal:Z

    return-void
.end method
