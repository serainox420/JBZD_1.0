.class Lcom/smartadserver/android/library/ui/SASAdView$12;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/smartadserver/android/library/ui/SASAdView$a;

.field final synthetic g:I

.field final synthetic h:Z

.field final synthetic i:Z

.field final synthetic j:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;IZZ)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->j:Lcom/smartadserver/android/library/ui/SASAdView;

    iput p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->a:I

    iput-object p3, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->b:Ljava/lang/String;

    iput p4, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->c:I

    iput-boolean p5, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->d:Z

    iput-object p6, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->f:Lcom/smartadserver/android/library/ui/SASAdView$a;

    iput p8, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->g:I

    iput-boolean p9, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->h:Z

    iput-boolean p10, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->i:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 768
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->j:Lcom/smartadserver/android/library/ui/SASAdView;

    iget v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->a:I

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->b:Ljava/lang/String;

    iget v3, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->c:I

    iget-boolean v4, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->d:Z

    iget-object v5, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->f:Lcom/smartadserver/android/library/ui/SASAdView$a;

    iget v7, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->g:I

    iget-boolean v8, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->h:Z

    iget-boolean v9, p0, Lcom/smartadserver/android/library/ui/SASAdView$12;->i:Z

    invoke-static/range {v0 .. v9}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;IZZ)V

    .line 769
    return-void
.end method
