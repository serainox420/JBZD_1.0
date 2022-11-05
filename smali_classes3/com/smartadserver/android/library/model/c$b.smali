.class public Lcom/smartadserver/android/library/model/c$b;
.super Ljava/lang/Object;
.source "SASVASTElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/model/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/smartadserver/android/library/model/c$b;->a:Ljava/lang/String;

    .line 269
    iput-object p3, p0, Lcom/smartadserver/android/library/model/c$b;->b:Ljava/lang/String;

    .line 270
    iput-object p2, p0, Lcom/smartadserver/android/library/model/c$b;->d:Ljava/lang/String;

    .line 271
    iput-object p4, p0, Lcom/smartadserver/android/library/model/c$b;->c:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string v1, "IMAGE/JPG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "IMAGE/PNG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "IMAGE/JPEG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
