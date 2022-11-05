.class public Lcom/google/firebase/database/m$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/google/android/gms/internal/zzbsc;


# direct methods
.method private constructor <init>(ZLcom/google/android/gms/internal/zzbsc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/firebase/database/m$b;->a:Z

    iput-object p2, p0, Lcom/google/firebase/database/m$b;->b:Lcom/google/android/gms/internal/zzbsc;

    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/android/gms/internal/zzbsc;Lcom/google/firebase/database/m$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/m$b;-><init>(ZLcom/google/android/gms/internal/zzbsc;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/database/m$b;->a:Z

    return v0
.end method

.method public b()Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/m$b;->b:Lcom/google/android/gms/internal/zzbsc;

    return-object v0
.end method
