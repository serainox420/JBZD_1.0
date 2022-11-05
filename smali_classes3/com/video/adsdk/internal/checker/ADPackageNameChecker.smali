.class public Lcom/video/adsdk/internal/checker/ADPackageNameChecker;
.super Ljava/lang/Object;
.source "ADPackageNameChecker.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/checker/PackageNameChecker;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/video/adsdk/internal/checker/ADPackageNameChecker;->context:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADPackageNameChecker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readCurrentValues()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method
