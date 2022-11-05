.class public Lcom/google/android/gms/internal/zzbnc;
.super Ljava/lang/Object;


# instance fields
.field private zzbYR:Lcom/google/android/gms/internal/zzbnf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbnf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbnf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnc;->zzbYR:Lcom/google/android/gms/internal/zzbnf;

    return-void
.end method


# virtual methods
.method public getUser()Lcom/google/firebase/auth/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnc;->zzbYR:Lcom/google/android/gms/internal/zzbnf;

    return-object v0
.end method
