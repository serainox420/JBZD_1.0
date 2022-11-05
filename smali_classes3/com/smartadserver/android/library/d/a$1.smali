.class Lcom/smartadserver/android/library/d/a$1;
.super Ljava/lang/Object;
.source "SASAdCacheManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/d/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/d/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/d/a;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/smartadserver/android/library/d/a$1;->a:Lcom/smartadserver/android/library/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
