.class public Lcom/google/firebase/auth/h;
.super Lcom/google/firebase/auth/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public static a(Lcom/google/firebase/auth/h;)Lcom/google/android/gms/internal/zzbmx;
    .locals 6

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzbmx;

    invoke-virtual {p0}, Lcom/google/firebase/auth/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/firebase/auth/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/firebase/auth/h;->c()Ljava/lang/String;

    move-result-object v5

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbmx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "twitter.com"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/h;->b:Ljava/lang/String;

    return-object v0
.end method
