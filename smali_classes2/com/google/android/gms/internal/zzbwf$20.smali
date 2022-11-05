.class final Lcom/google/android/gms/internal/zzbwf$20;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbvd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbwf;->zza(Lcom/google/android/gms/internal/zzbwg;Lcom/google/android/gms/internal/zzbvc;)Lcom/google/android/gms/internal/zzbvd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzcqe:Lcom/google/android/gms/internal/zzbwg;

.field final synthetic zzcsc:Lcom/google/android/gms/internal/zzbvc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbwg;Lcom/google/android/gms/internal/zzbvc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbwf$20;->zzcqe:Lcom/google/android/gms/internal/zzbwg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbwf$20;->zzcsc:Lcom/google/android/gms/internal/zzbvc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbwg;)Lcom/google/android/gms/internal/zzbvc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzbuk;",
            "Lcom/google/android/gms/internal/zzbwg",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzbvc",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwf$20;->zzcqe:Lcom/google/android/gms/internal/zzbwg;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzbwg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwf$20;->zzcsc:Lcom/google/android/gms/internal/zzbvc;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
