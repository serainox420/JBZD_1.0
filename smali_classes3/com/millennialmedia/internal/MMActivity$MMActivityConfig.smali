.class public Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
.super Ljava/lang/Object;
.source "MMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/MMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MMActivityConfig"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v0, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->d:I

    .line 81
    iput v0, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->c:I

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->c:I

    return p1
.end method

.method static synthetic a(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic b(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic c(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->d:I

    return v0
.end method

.method static synthetic d(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->a:Z

    return v0
.end method

.method static synthetic e(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->b:Z

    return v0
.end method

.method static synthetic f(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->c:I

    return v0
.end method


# virtual methods
.method public setAudioSource(I)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->d:I

    .line 112
    return-object p0
.end method

.method public setImmersive(Z)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->a:Z

    .line 89
    return-object p0
.end method

.method public setOrientation(I)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->c:I

    .line 97
    return-object p0
.end method

.method public setTransitionAnimation(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->e:Ljava/lang/Integer;

    .line 119
    iput-object p2, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->f:Ljava/lang/Integer;

    .line 121
    return-object p0
.end method

.method public setTransparent(Z)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->b:Z

    .line 129
    return-object p0
.end method
