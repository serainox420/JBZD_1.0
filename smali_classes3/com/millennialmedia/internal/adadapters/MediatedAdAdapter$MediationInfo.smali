.class public Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;
.super Ljava/lang/Object;
.source "MediatedAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediationInfo"
.end annotation


# instance fields
.field public siteId:Ljava/lang/String;

.field public spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->siteId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->spaceId:Ljava/lang/String;

    .line 20
    return-void
.end method
