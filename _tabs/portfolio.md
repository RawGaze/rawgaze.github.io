---
layout: portfolio-layout
title: Portfolio
icon: fas fa-camera    # of een ander FontAwesome icon
order: 4               # positie in de navigatie (1 is about, 2 is categories, etc.)
---

<div class="portfolio-grid">
  <!-- Landschap Fotografie -->
  <div class="image-wrapper">
    <a href="{{ 'assets/img/portfolio/large/landschap1.webp' | relative_url }}" class="glightbox" data-gallery="portfolio">
      <img src="{{ 'assets/img/portfolio/small/landschap1.webp' | relative_url }}"
           srcset="{{ 'assets/img/portfolio/small/landschap1.webp' | relative_url }} 800w,
                   {{ 'assets/img/portfolio/medium/landschap1.webp' | relative_url }} 1600w,
                   {{ 'assets/img/portfolio/large/landschap1.webp' | relative_url }} 2400w"
           sizes="(max-width: 800px) 100vw, (max-width: 1600px) 50vw, 33vw"
           alt="Zonsondergang over Nederlands landschap"
           loading="lazy">
      <div class="image-caption">Zonsondergang Veluwe</div>
    </a>
  </div>

  <div class="image-wrapper">
    <a href="{{ 'assets/img/portfolio/large/landschap2.webp' | relative_url }}" class="glightbox" data-gallery="portfolio">
      <img src="{{ 'assets/img/portfolio/small/landschap2.webp' | relative_url }}"
           srcset="{{ 'assets/img/portfolio/small/landschap2.webp' | relative_url }} 800w,
                   {{ 'assets/img/portfolio/medium/landschap2.webp' | relative_url }} 1600w,
                   {{ 'assets/img/portfolio/large/landschap2.webp' | relative_url }} 2400w"
           sizes="(max-width: 800px) 100vw, (max-width: 1600px) 50vw, 33vw"
           alt="Mistige ochtend in het bos"
           loading="lazy">
      <div class="image-caption">Mistisch bospad</div>
    </a>
  </div>

  <div class="image-wrapper">
    <a href="{{ 'assets/img/portfolio/large/landschap3.webp' | relative_url }}" class="glightbox" data-gallery="portfolio">
      <img src="{{ 'assets/img/portfolio/small/landschap3.webp' | relative_url }}"
           srcset="{{ 'assets/img/portfolio/small/landschap3.webp' | relative_url }} 800w,
                   {{ 'assets/img/portfolio/medium/landschap3.webp' | relative_url }} 1600w,
                   {{ 'assets/img/portfolio/large/landschap3.webp' | relative_url }} 2400w"
           sizes="(max-width: 800px) 100vw, (max-width: 1600px) 50vw, 33vw"
           alt="Hollandse wolkenlucht boven polderlandschap"
           loading="lazy">
      <div class="image-caption">Hollandse luchten</div>
    </a>
  </div>

  <!-- Architectuur -->
  <div class="image-wrapper">
    <a href="{{ 'assets/img/portfolio/large/architectuur1.webp' | relative_url }}" class="glightbox" data-gallery="portfolio">
      <img src="{{ 'assets/img/portfolio/small/architectuur1.webp' | relative_url }}"
           srcset="{{ 'assets/img/portfolio/small/architectuur1.webp' | relative_url }} 800w,
                   {{ 'assets/img/portfolio/medium/architectuur1.webp' | relative_url }} 1600w,
                   {{ 'assets/img/portfolio/large/architectuur1.webp' | relative_url }} 2400w"
           sizes="(max-width: 800px) 100vw, (max-width: 1600px) 50vw, 33vw"
           alt="Moderne architectuur Rotterdam"
           loading="lazy">
      <div class="image-caption">Markthal Rotterdam</div>
    </a>
  </div>

  <div class="image-wrapper">
    <a href="{{ 'assets/img/portfolio/large/architectuur2.webp' | relative_url }}" class="glightbox" data-gallery="portfolio">
      <img src="{{ 'assets/img/portfolio/small/architectuur2.webp' | relative_url }}"
           srcset="{{ 'assets/img/portfolio/small/architectuur2.webp' | relative_url }} 800w,
                   {{ 'assets/img/portfolio/medium/architectuur2.webp' | relative_url }} 1600w,
                   {{ 'assets/img/portfolio/large/architectuur2.webp' | relative_url }} 2400w"
           sizes="(max-width: 800px) 100vw, (max-width: 1600px) 50vw, 33vw"
           alt="Historische architectuur Amsterdam"
           loading="lazy">
      <div class="image-caption">Grachtenpanden Amsterdam</div>
    </a>
  </div>

  <div class="image-wrapper">
    <a href="{{ 'assets/img/portfolio/large/architectuur3.webp' | relative_url }}" class="glightbox" data-gallery="portfolio">
      <img src="{{ 'assets/img/portfolio/small/architectuur3.webp' | relative_url }}"
           srcset="{{ 'assets/img/portfolio/small/architectuur3.webp' | relative_url }} 800w,
                   {{ 'assets/img/portfolio/medium/architectuur3.webp' | relative_url }} 1600w,
                   {{ 'assets/img/portfolio/large/architectuur3.webp' | relative_url }} 2400w"
           sizes="(max-width: 800px) 100vw, (max-width: 1600px) 50vw, 33vw"
           alt="Moderne kantoorgebouwen Zuidas"
           loading="lazy">
      <div class="image-caption">Zuidas Amsterdam</div>
    </a>
  </div>
</div>