.class public Lcom/apprupt/sdk/CvAdSpaceSettings;
.super Lcom/apprupt/sdk/CvSettings;
.source "CvAdSpaceSettings.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 28
    invoke-direct {p0}, Lcom/apprupt/sdk/CvSettings;-><init>()V

    .line 20
    iput-boolean v1, p0, Lcom/apprupt/sdk/CvAdSpaceSettings;->a:Z

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/apprupt/sdk/CvAdSpaceSettings;->b:I

    .line 22
    iput-boolean v1, p0, Lcom/apprupt/sdk/CvAdSpaceSettings;->c:Z

    .line 23
    iput-boolean v1, p0, Lcom/apprupt/sdk/CvAdSpaceSettings;->d:Z

    .line 29
    return-void
.end method
